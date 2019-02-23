def stock_picker(prices)
    highest_profit = 0
    i = 0

    while i < prices.length - 1 do
        x = i + 1
        while x < prices.length do
            profit = prices[x] - prices[i]
            if profit > highest_profit
                highest_profit = profit
                buy_date = i
                sell_date = x
            end
            x += 1
        end
        i += 1
    end
    return [buy_date, sell_date]
end
