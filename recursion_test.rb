
# keep on looping redeem_bottle and redeem_cap until leftover_bottle < 2 && leftover_cap < 4
POP_CONSTANT = 2

def calc(money)
	res = money / POP_CONSTANT
	bnum = redeem_bottle(res)
	cnum = redeem_cap(res)
	redemp_bottle = bnum + cnum
	lobnum = leftover_bottle(res)
	locnum = leftover_cap(res)
	# puts "For the #{money} dollars you have spent, you have purchased #{res} pop. You may redeem #{bnum}pop with empty bottles, #{cnum}pop with empty caps in total of #{redemp_bottle}"
	# puts "You also have #{lobnum}bottles and #{loccum}caps left for future redemption"
	(1..res).each do |i|
		redeem_bottle(i)
		redeem_cap(i)
	end
end

def redeem_bottle(res)
	res / 2
end

def redeem_cap(res)
	res / 4
end

def leftover_bottle(res)
	res % 2
end

def leftover_cap(res)
	res % 4
end


puts calc(20)
# totalbottles = 0
#
# totalbottles = res + redemp_bottle
# redemp_bottle = bnum + cnum



