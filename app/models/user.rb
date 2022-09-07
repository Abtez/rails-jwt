class User < ApplicationRecord
    validates :password, length: { minimum: 4, allow_blank: true }
    validates :username, uniqueness: { case_sensitive: false }
    has_secure_password
end
