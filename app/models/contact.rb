class Contact < ActiveRecord::Base
	has_many :appointments, dependent: :destroy
	validates_presence_of :first_name
	validates_presence_of :email

	def most_recent_appointment_date
		if appointments.any?
			appointments.order(starts_at: :desc).first.starts_at
		else
			"No scheduled appointments"
		end
	end

end