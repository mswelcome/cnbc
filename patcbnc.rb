#Pat's cbnc

def create_empty_array
	arry = []
	return arry
end

def player_number
	player_number = 5647.to_s
	return player_number
end

def winning_numbers_lose
	winning_numbers = ['1234', '4567', '7891', '8910']
	return winning_numbers
end

def winning_numbers_win
        winning_numbers = ['2346', '5647', '5691', '1900']
        return winning_numbers
end

def check_if_won_lose
	player_number = 5647.to_s
	winning_numbers = ['1234', '4567', '7891', '8910']
	return winning_numbers.include? player_number
end

def check_if_won_win
        player_number = 5647.to_s
        winning_numbers = ['2346', '5647', '5691', '1900']
        return winning_numbers.include? player_number
end

def check_if_won_with_parameters(customer_number, winning_numbers)
	return winning_numbers.include? player_number	
end

# Now to compare strings for differences

def string_to_array
	'1234'.split(//)
end