require 'pry'
# keep on looping redeem_bottle and redeem_cap until leftover_bottle < 2 && leftover_cap < 4
POP_CONSTANT = 2


def calc_recycled(bottles, caps)
	# binding.pry
	recycled = 0
	loop do
		bottles -= 2
		recycled += 1
		caps -= 4
		recycled += 1
		if bottles < 2 && caps < 4
			break
		end
	end
	recycled
end



puts calc_recycled(1, 1)

# def calc(money)
# 	init = calc_init_bottle(money)
# 	recy = redeem_cap(init) + redeem_bottle(init)
# 	init += recy
# 	init
# 	# loop do
# 	# 	if resb >= 0
# 	# 		res = resb
# 	# 		res +=  resb
# 	# 		break
# 	# 	end
# 	# end
# 	# res
# 	# binding.pry
# end
#
# 	# bnum = redeem_bottle(res)
# 	# cnum = redeem_cap(res)
# 	# redemp_bottle = bnum + cnum
# 	# lobnum = leftover_bottle(res)
# 	# locnum = leftover_cap(res)
#
# 	# puts "For the #{money} dollars you have spent, you have purchased #{res} pop. You may redeem #{bnum}pop with empty bottles, #{cnum}pop with empty caps in total of #{redemp_bottle}"
# 	# puts "You also have #{lobnum}bottles and #{locnum}caps left for future redemption"
# def calc_init_bottle(money)
# 	money / POP_CONSTANT
# end
#
# def redeem_bottle(res)
# 	res / 2
# end
#
# def redeem_cap(res)
# 	res / 4
# end
#
# def leftover_bottle(res)
# 	res % 2
# end
#
# def leftover_cap(res)
# 	res % 4
# end
#
# def recursion(res)
# end
#
# puts calc(23)


# puts test(20)
#
# 	unless lobnum < 2 && locnum < 4 && redemp_bottle == 0
# 		redeem_bottle(res)
# 		redeem_cap(res)
# 	else
# 		return res
# 	end
# 	calc()
