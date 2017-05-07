require 'test_helper'

class BillTest < ActiveSupport::TestCase
	
  	test "should not save bill without number" do
	  bill = Bill.new(amount:1000, issueDate: "2017-04-13", payDate: "2017-04-13")
	  assert_not bill.save
	end

	test "should not save bill without issueDate" do
	  bill = Bill.new(number: 1, amount: 1000, payDate: "2017-04-13")
	  assert_not bill.save
	end

	test "should not save bill without payDate" do
	  bill = Bill.new(number: 1, amount: 1000, issueDate: "2017-04-13")
	  assert_not bill.save
	end
end
