def stock_picker(stocks)
	result = [0,0] #[0] is best day to buy, [1] is best day to sell. 

	maxprofit = 0

	for i in 0...stocks.length
		for j in i...stocks.length
			if (stocks[j] - stocks[i]) > maxprofit
				maxprofit = (stocks[j] - stocks[i])
				result [0] = i
				result [1] = j
			end
		end
	end


	puts "[#{result.join(",")}]"
end

stock_picker([17,3,6,9,15,8,6,1,10]) #Each index represents a day. 

stock_picker([10,9,8,7,6,5,4,3,2,1])