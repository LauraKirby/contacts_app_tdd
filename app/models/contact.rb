class Contact < ActiveRecord::Base
	has_many :appointments, dependent: :destroy
	validates_presence_of :first_name
	validates_presence_of :email

	def most_recent_appointment(each_contact)
		if each_contact.appointments.size > 0
			@recent_appointment = each_contact.appointments.not(each_contact.appointments.starts_at => nil).order("starts_at").last; 
			@recent_appointment.starts_at unless recent_appointment.nil?
		end
	end 

end