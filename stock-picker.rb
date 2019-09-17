def stock_picker(str)
    ideal_pair = []
    stocks = str.split(",")
    stocks.collect { |i| i.to_i }
    max_profit = 0
    stocks.each do |p|
        cur_inx = stocks.index(p)
        next_inx = cur_inx + 1
        while next_inx <= stocks.length - 1
            if stocks[next_inx].to_i-stocks[cur_inx].to_i>max_profit
                ideal_pair = []
                row = []
                max_profit = stocks[next_inx].to_i-stocks[cur_inx].to_i
                row.push(cur_inx,next_inx)
                ideal_pair.push(row)
            end
            next_inx += 1
        end
    end
    puts "***Ideal buy-sell prices***"
    puts ideal_pair
    puts "$$$Profit$$$"
    puts max_profit
end

puts "$$$Input prices$$$"
input_prices = gets.chomp
stock_picker(input_prices)