#Close but No Cigar

def cbnc(wn, yn)
	win = []
	wn.each do |wt|
		if wt == yn
		win << yn
		end
	end
	win
end

def cbnc_off_one(yn, wn)
	c = 0
	i = 0

	yn.length.times do
		if yn[i] == wn[i]
			c += 1
		end
		i += 1
	end

	
	c == yn.length - 1

end

def cbnc_off_one_array(wn, yn)

	off = []

	wn.each do |x|
		if cbnc_off_one(x, yn) == true
			off << x
		end
	end
	off
end
