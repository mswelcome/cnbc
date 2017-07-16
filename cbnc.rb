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
	x = 0
	if yn[0] == wn[0]
		x += 1
	end

	if yn[1] == wn[1]
		x += 1
	end

	if yn[2] == wn[2]
		x += 1
	end

	if yn[3] == wn[3]
		x += 1
	end

	x == 3

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
