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
    # do we need this here?
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

  private

  def contact_params
    params.require(:contact).permit(:first_name, :email)
  end

end