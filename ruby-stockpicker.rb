def stock_picker(prices)
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day + 1..-1].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        best_days = [buy_day, sell_day + buy_day + 1]
      end
    end
  end
  print best_days
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
