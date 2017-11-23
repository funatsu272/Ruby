reqire './method'

ifdoneOCo

while(1)
	curret_price = get_price
	puts curret_price

	buy_price = 450000
	sell_price = 500000
	if (curret_price > sell_price) && (get_my_money("BTC")["amount"] > 0.001)
		puts "売ります"
		order("SELL",sell_price,0.001)
	elsif curret_price < buy_price && (get_my_money("JPY")["amount"] > 1000)
		puts "買います"
			order("BUY",buy_price,0.001)
	else
		puts "何もしません"
	end

	


	sleep(1)
end