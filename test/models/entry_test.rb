require 'test_helper'

class EntryTest < ActiveSupport::TestCase
	test "the truth" do
		assert true
	end

	test "should not save Entry without description" do
	  entry = Entry.new(amount: 10000, date: "2017-04-14")
	  assert_not entry.save
	end

	test "should not save Entry without date" do
	  entry = Entry.new(description: "MyText", amount: 10000)
	  assert_not entry.save
	end

end
