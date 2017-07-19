#Randomly choosing a partner from an array

def rcp(n)
	e = n.shuffle.each_slice(2).to_a
	x = e.length - 1
	if n.length % 2 == 0
		e.length
	else
 		e[0] << e[x]
 		e.pop
 		e[0].flatten!
 	end
	p "#{e}"
	p e.length
end


