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
	'6666'.split(//)
end

 def cbnc2_off_one(wn, yt)
 	off = []
 	#c = 0 
 	
 	wn.each do |i| 
 		c = 0
 		x = 0
 		#p "#{i[x]} Iteration possition"
 		#p "#{yt[x]} Your Ticket"
 		#p "#{x} index "
 		yt.length.times do
 			p "#{i[x]} Iteration possition"
 			p "#{yt[x]} Your Ticket"
 			if yt[x] == i[x]
 			p "#{i} Winning Number Iteration"
 			c += 1
 			p "#{c} counter"
 			end
 			x += 1
		end
		
 		if c == yt.length - 1
 			off << i
 		end
 			
  	end
  	

 	off	
end
