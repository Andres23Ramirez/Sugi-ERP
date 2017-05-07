require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase

	test "should not save employee without first_name" do
	  employee = Employee.new(last_name: "MyString", cv_file: "MyString", date_hire:" 2017-04-14", position: "MyString")
	  assert_not employee.save
	end

	test "should not save employee without last_name" do
	  employee = Employee.new(first_name: "MyString", cv_file: "MyString", date_hire:" 2017-04-14", position: "MyString")
	  assert_not employee.save
	end

	test "should not save employee without cv_file" do
	  employee = Employee.new(first_name: "MyString", last_name: "MyString", date_hire:" 2017-04-14", position: "MyString")
	  assert_not employee.save
	end

	test "should not save employee without date_hire" do
	  employee = Employee.new(first_name: "MyString", last_name: "MyString", cv_file: "MyString", position: "MyString")
	  assert_not employee.save
	end

	test "should not save employee without position" do
	  employee = Employee.new(first_name: "MyString", last_name: "MyString", cv_file: "MyString", date_hire:" 2017-04-14")
	  assert_not employee.save
	end
end
