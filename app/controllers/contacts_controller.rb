class ContactsController < ApplicationController
  def index
  	@contacts = Contact.all
  end

  def new
  	@contact = Contact.new
  end 

  def create
  	@contact = Contact.new(contact_params)

  	if @contact.save
      @appt_total = @contact.appointments.count
  		redirect_to root_path
  	else 
  		render :new 
  	end 
  end 

  private 
  def contact_params 
  	params.require(:contact).permit(:first_name, :email)
  end 
end
