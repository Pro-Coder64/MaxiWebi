class User < ApplicationRecord
    has_secure_password

    def display_name
        if username.split(".").first.capitalize == "Admin"
            username.split(".").last.capitalize
        else
            username.split(".").first.capitalize
        end
    end

    def yen
        if username.split(".").first.capitalize == "Admin"
            1500
        else
            250
        end
    end
end