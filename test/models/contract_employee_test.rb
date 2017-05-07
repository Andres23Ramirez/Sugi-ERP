require 'test_helper'

class ContractEmployeeTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "should not save ContractEmployee without dateStart" do
	  contract_employee = ContractEmployee.new(dateEnd: "2017-04-14", salary: 1000)
	  assert_not contract_employee.save
	end

	test "should not save ContractEmployee without dateEnd" do
	  contract_employee = ContractEmployee.new(dateStart: "2017-04-14", salary: 1000)
	  assert_not contract_employee.save
	end

	test "should not save ContractEmployee without salary" do
	  contract_employee = ContractEmployee.new(dateStart: "2017-04-14", dateEnd: "2017-04-14")
	  assert_not contract_employee.save
	end
end
