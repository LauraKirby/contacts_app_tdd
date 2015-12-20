class Contact < ActiveRecord::Base
	has_many :appointments, dependent: :destroy
	validates_presence_of :first_name
	validates_presence_of :email
end