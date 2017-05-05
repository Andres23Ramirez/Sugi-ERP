class AdministrationController < ApplicationController
	before_action :authenticate_admin_user!
	
	def index
		@count_employees = Employee.all.count
		@count_bills = Bill.all.count
		@count_entries = Entry.all.count
		@count_outflows = Outflow.all.count
	end
end
