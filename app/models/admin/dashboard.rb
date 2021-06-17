class Admin::Dashboard < ApplicationRecord
	validates :detail, presence: true
	belongs_to :user
end
