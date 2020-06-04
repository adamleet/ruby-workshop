def with_sales_tax(array) 
    array.map do |item|
        yield item.to_f
    end
end

prices = [5,25,'20',3.75,'5.25']
sales_tax = 0.25
new_prices = with_sales_tax(prices) do |price|
     puts price * sales_tax
end

