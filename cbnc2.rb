#Close but No Cigar 2

def cbnc2_empty
	wt = []
	return wt
end

def cbnc2_win
	wt = []
	wn = ["3333", "4444", "5555", "6666"]
	yt = "6666"
	if wn.include?(yt)
		wt << yt
	end
end		
	
def cbnc2_split
	'6666'.chars
end

 def cbnc2_off_one(wn, yt)
 	off = []
 	wn.each do |i| 
 		yt.split(//).zip(i.split(//))
 		if i[0] != i[1]
 			off << i 
 		end
  	end 	
 	off	
end

# def off_one_array(wn, yt)
# 	off = []
# 	p "Winning Numbers are #{wn}"
# 	p "Your Ticket is #{yt}"
# 	wn.each do |i|
# 		if true == cbnc2_off_one(yt, i)
# 			off << i
# 		end
# 	end
# 	off
# end

