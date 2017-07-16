require "minitest/autorun"
require_relative "cbnc2.rb"

class Test_cbnc2 < Minitest::Test

	def test_empty
		x = []
		assert_equal(x, cbnc2_empty)
	end

	def test_cbnc2_win
		assert_equal("6666" ,  cbnc2_win[0])
	end

	def test_cbnc2_split
		assert_equal(['6' , '6' , '6' , '6'] , cbnc2_split)
	end

	def test_cbnc2_off_one
		yt = "1234"
		wn = ["1235", "1634", "8888", "7777"]
		p cbnc2_off_one(wn, yt)
		assert_equal(false, cbnc2_off_one(wn, yt))
	end

	# def test_cbnc2_2_off
	# 	yt = "1445"
	# 	wn = "1235"
	# 	assert_equal(false, cbnc2_off_one(wn, yt))
	# end

	# def test_thisisatest
	# 	yt = "1234"
	# 	wn = "1234"
	# 	assert_equal(false, cbnc2_off_one(wn, yt))
	#end

	def test_off_one_array
		yt = "1234"
		wn = ["1235", "6789", "7698", "9678"]
		assert_equal(["1235"], off_one_array(wn, yt))
		p cbnc2_off_one(wn, yt)
	end

end