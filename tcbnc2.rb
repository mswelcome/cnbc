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
		wn = ["1235" , "9999" , "8888", "7777"]
		p cbnc2_off_one(wn, yt)
		assert_equal(["1235"], cbnc2_off_one(wn, yt))
	end

	 def test_cbnc2_off_one_2
	 	yt = "1234"
	 	wn = ["1235", "1634", "8888", "7777"]
	 	p cbnc2_off_one(wn, yt)
	 	assert_equal(["1235","1634"], cbnc2_off_one(wn,yt))
	 end

	 def test_cbnc2_off_one_ln
	 	yt = "12345678"
	 	wn = ["12355678", "88888888", "99999999", "77777777"]
	 	p cbnc2_off_one(wn, yt)
	 	assert_equal(["12355678"], cbnc2_off_one(wn, yt))
	 end
	
	 def test_cbnc2_off_one_ln_2
	 	yt = "12345678"
	 	wn = ["12355678", "12445678", "99999999", "77777777"]
	 	p cbnc2_off_one(wn, yt)
	 	assert_equal(["12355678", "12445678"], cbnc2_off_one(wn, yt))
	 end

end