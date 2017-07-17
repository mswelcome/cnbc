#Test for Counting the Number of Identical positions in Strings

require "minitest/autorun"
require_relative "ci.rb"

class Test_ci < Minitest::Test 

	def test_ident_6
		x = "qwerty"
		y = "qwerty"
		assert_equal(6, ident(x, y))
	end

	def test_ident_5
		x = "qwerty"
		y = "qwertt"
		assert_equal(5, ident(x, y))
	end

end