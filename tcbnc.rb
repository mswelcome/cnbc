#Test Close but No Cigar
require "minitest/autorun"
require_relative "cbnc.rb"

class Test_cbnc < Minitest::Test 

	def test_empty
		wn = []
		yn = "1234"
		wns = ["1111", "2222", "3333"]
		assert_equal(wn , cbnc(wns, yn))
	end

	def test_win
		yn = "7189"
		wn = ["7189", "9999", "2222", "6666"]
		assert_equal(["7189"], cbnc(wn, yn))
	end

	def test_off_one_true
		yn = "7199"
		wn = "7189" #, "9999", "2222", "6666"]
		assert_equal(true , cbnc_off_one(yn, wn))
	end

	def test_off_one_false
		yn = "7189"
		wn = "7189"
		assert_equal(false  , cbnc_off_one(yn, wn))
	end

	def test_cbnc_off_one_array
		yn = "1234"
		wn = ["1235", "9999", "8888", "7777"]
		assert_equal(["1235"], cbnc_off_one_array(wn, yn))
	end

	def test_cbnc_multi_one_off
		yn = "1234"
		wn = ["1235", "2234", "1934", "1334"]
		assert_equal(["1235", "2234", "1934", "1334"], cbnc_off_one_array(wn, yn))
	end

	 def test_cbnc_off_one_extended
	 	yn = "12345678"
	 	wn = "12355678"
	 	assert_equal(true, cbnc_off_one(yn, wn))
	 end

	 def test_cbnc_off_one_array_extended
	 	yn = "12345678"
	 	wn = ["12355678", "99999999", "88888888", "777777777"]
	 	assert_equal(["12355678"], cbnc_off_one_array(wn, yn))
	 end
end