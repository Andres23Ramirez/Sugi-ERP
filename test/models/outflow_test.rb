require 'test_helper'

class OutflowTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "should not save Outflow without description" do
	  outflow = Outflow.new(price_cents: 1000, date: "2017-04-14")
	  assert_not outflow.save
	end

	test "should not save Outflow without date" do
	  outflow = Outflow.new(description: "MyText", price_cents: 1000)
	  assert_not outflow.save
	end
end
