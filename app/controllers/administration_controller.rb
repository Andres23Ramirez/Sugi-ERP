class AdministrationController < ApplicationController
	before_action :authenticate_admin_user!
	
	def index
		@count_employees = Employee.all.count
		@count_bills = Bill.all.count
		@count_entries = Entry.all.count
		@count_outflows = Outflow.all.count
		@total_amount_entries = 0
		@total_amount_outflows = 0

		Entry.all.each do |entry|	
			@total_amount_entries = @total_amount_entries + entry.amoun
		end

		Outflow.all.each do |outflow|	
			@total_amount_outflows = @total_amount_outflows + outflow.amoun
		end
	end
end
