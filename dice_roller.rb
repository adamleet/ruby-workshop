def roll(sides, number=1)
    roll_array = []
    number.times do
        roll_value = rand(sides) + 1
        roll_array << roll_value
    end
    total = 0
    roll_array.each do |roll|
        new_total = total + roll
        total = new_total
    end
    total
end

puts 'You rolled a 5 sided dice'
puts roll(5)

puts 'You rolled 2 six sided dice'
puts roll(6,2)