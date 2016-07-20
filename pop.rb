POP_CONSTANT = 2

def calc(money)
	res = money / POP_CONSTANT
	bnum = redeem_bottle(res)
	cnum = redeem_cap(res)
	redemp_bottle = bnum + cnum
	lobnum = leftover_bottle(res)
	loccum = leftover_cap(res)
	puts "For the #{money} dollars you have spent, you have purchased #{res} pop. You may redeem #{bnum}pop with empty bottles, #{cnum}pop with empty caps in total of #{redemp_bottle}"
	puts "You also have #{lobnum}bottles and #{loccum}caps left for future redemption"
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

loop do
	puts "Please enter $ amount spent on purchasing pop! (each pop is $2, no change given!)"
	puts "when ready to exit, just type quit"
	money_spent = gets.chomp

	case money_spent
		when /[0-9]+/
			money = money_spent.to_i
			calc(money)
		when 'quit'
			break
		else
			puts "please type valid amount"
	end
end