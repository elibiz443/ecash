class Admin::Home < ApplicationRecord
	validates :detail, presence: true
end
