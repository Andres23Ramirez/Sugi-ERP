require 'test_helper'

class ContracEstablishmentTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "should not save ContracEstablishment without first_name" do
	  contrac_establishment = ContracEstablishment.new(wayToPay: "MyString", porpuse: "MyText", file_name: "MyString", startDate: "2017-04-13", endDate: "2017-04-13")
	  assert_not contrac_establishment.save
	end

	test "should not save ContracEstablishment without wayToPay" do
	  contrac_establishment = ContracEstablishment.new(description: "MyText", porpuse: "MyText", file_name: "MyString", startDate: "2017-04-13", endDate: "2017-04-13")
	  assert_not contrac_establishment.save
	end

	test "should not save ContracEstablishment without porpuse" do
	  contrac_establishment = ContracEstablishment.new(description: "MyText", wayToPay: "MyString", file_name: "MyString", startDate: "2017-04-13", endDate: "2017-04-13")
	  assert_not contrac_establishment.save
	end

	test "should not save ContracEstablishment without file_name" do
	  contrac_establishment = ContracEstablishment.new(description: "MyText", wayToPay: "MyString", porpuse: "MyText", startDate: "2017-04-13", endDate: "2017-04-13")
	  assert_not contrac_establishment.save
	end

	test "should not save ContracEstablishment without startDate" do
	  contrac_establishment = ContracEstablishment.new(description: "MyText", wayToPay: "MyString", porpuse: "MyText", file_name: "MyString", endDate: "2017-04-13")
	  assert_not contrac_establishment.save
	end

	test "should not save ContracEstablishment without endDate" do
	  contrac_establishment = ContracEstablishment.new(description: "MyText", wayToPay: "MyString", porpuse: "MyText", file_name: "MyString", startDate: "2017-04-13")
	  assert_not contrac_establishment.save
	end
end
