class AppointmentsController < ApplicationController
	def create
	end

	private
	def appt_params
		params.require(:appointment).permit(:starts_at)
	end
end