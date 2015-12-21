class ContactsController < ApplicationController
  helper_method :most_recent_appointment
  def index
  	@contacts = Contact.all
    # @contacts = Contact.by_most_recent_appt.all
    # logger.info('--------------- index')
    # logger.info(@contacts.all.inspect)
    # logger.info(@contacts.first.appointments.where.not('appointments.starts_at' => nil).order("starts_at").last.inspect)
    # logger.info(@contacts.first.appointments.all.inspect)
  end

  def new
  	@contact = Contact.new
  end 

  def create
  	@contact = Contact.new(contact_params)

  	if @contact.save
  		redirect_to root_path
  	else 
  		render :new 
  	end 
  end 

  def most_recent_appointment(each_contact)
    if each_contact.appointments.size > 0
      @recent_appointment = each_contact.appointments.not(each_contact.appointments.starts_at => nil).order("starts_at").last; 
      @recent_appointment.starts_at unless recent_appointment.nil?
    end 
  end 

  private 
  def contact_params 
  	params.require(:contact).permit(:first_name, :email)
  end 

end
