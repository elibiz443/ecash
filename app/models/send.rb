class Send < ApplicationRecord
	validates :recipient_email, presence: true
	validates :amount, presence: true
end
