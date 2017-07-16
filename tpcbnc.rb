require "minitest/autorun"
require_relative "patcbnc.rb"



class Kata_array_test < Minitest::Test
	
	def test_create_empty_array
		assert_equal([], create_empty_array)
	end

	def test_player_number
		assert_equal('5647', player_number)
	end

	def test_winning_numbers_lose
		assert_equal(['1234', '4567', '7891', '8910'], winning_numbers_lose)
	end

	def test_winning_numbers_win
                assert_equal(['2346', '5647', '5691', '1900'], winning_numbers_win)
        end

	def test_check_if_won_lose
                assert_equal(false, check_if_won_lose)
        end

	def test_check_if_won_win
                assert_equal(true, check_if_won_win)
        end

	def test_check_if_won_with_parameters_lose
		assert_equal(false, check_if_won_with_parameters('5647', ['1234', '4567', '7891', '8910']))
	end

	def test_check_if_won_with_parameters_win
                assert_equal(true, check_if_won_with_parameters('5647', ['2346', '5647', '5691', '1900']))
        end
	
	def test_string_to_array
		assert_equal(["1", "2", "3", "4"], string_to_array)
	end
end