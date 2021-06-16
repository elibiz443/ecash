class User < ApplicationRecord
	has_secure_password

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :phone_no, uniqueness: true, presence: true
	validates :email, uniqueness: true, presence: true

	has_many :userdashboards
end
