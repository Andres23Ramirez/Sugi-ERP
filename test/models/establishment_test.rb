require 'test_helper'

class EstablishmentTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "should not save Establishment without number" do
	  establishment = Establishment.new(name: "MyString", numberPhone: 3122342)
	  assert_not establishment.save
	end

	test "should not save Establishment without name" do
	  establishment = Establishment.new(number: 1, numberPhone: 3122342)
	  assert_not establishment.save
	end

	test "should not save Establishment without numberPhone" do
	  establishment = Establishment.new(number: 1, name: "MyString")
	  assert_not establishment.save
	end
end
