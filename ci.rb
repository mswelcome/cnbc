#Counting the Number of Identical positions in Strings

def ident(x, y)
c = 0
	x.length.times do |i| 
		if x[i] == y[i]
			c += 1
		end
	end 
	c 
		
end
