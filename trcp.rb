#Test for randomly choosing a Partner from an array

require "minitest/autorun"
require_relative "rcp.rb"

class Test_rcp < Minitest::Test

	def test_rcp_4n
		n = ["Matt", "Joe", "Josh", "Luke"]
		assert_equal(2, rcp(n))
	end

	def test_rcp_6n
		n = ["Matt", "Joe", "Josh", "Luke", "Pat", "Bill"]
		assert_equal(3, rcp(n))
	end

	def test_rcp_5n
		n = ["Matt", "Joe", "Josh", "Luke", "Bill"]
		assert_equal(2, rcp(n))
	end

	def test_rcp_7n
		n = ["Matt", "Joe", "Josh", "Luke", "Pat", "Bill", "Garret"]
		assert_equal(3, rcp(n))
	end
end