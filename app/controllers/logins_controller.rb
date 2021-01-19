class LoginsController < ApplicationController
    skip_before_action :ensure_authorized

    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:current_user] = user.id
            redirect_to root_path
        else
            render :new
        end
    end
    
    def destroy
        session[:current_user] = nil
        redirect_to new_login_path
    end

    def new 
    end
end
