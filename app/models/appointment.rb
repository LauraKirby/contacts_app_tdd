class Appointment < ActiveRecord::Base
	belongs_to :contact
	validates :starts_at, presence: true
end