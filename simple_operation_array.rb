color_1 = %w(violet indigo blue green)
color_2 = %w(yellow violet orange red violet)
color_3 = color_1 + color_2
colors_repeated = ["violet"]
colors_new = color_3 - colors_repeated
color_1.push('yellow')
color_1.push('red')
color_2.push('green')
color_2.push('blue')
color_1.last
color_1.pop
puts color_2
puts color_1

my_array = %w(1 1 2 3 4 5 6 6 4 3 2 1)
my_array_unique = my_array.uniq!



my_hash = {'jan' => 1, 'feb' => 2, 'mar' => 3}
months = {}
months[:jan] = 1
months[:feb] = 2
months[:mar] = 3

months.each do |key, value|
    puts "#{key} => #{value}"
end

user_ages = {:steve => 45, :bill => 34, :henry => 12, :mary => 67, :jane => 89}
user_ages.sort_by{|name, age| age}
user_ages.sort_by{|name, age| name}
user_ages.sort_by{|name, age| name}.reverse

user_data = {:steve => {:name => "Steve", :age => 56}, :ken => {:name => "Kenny", :age => 78}, :jane => {:name => "Janet", :age => 26}, :mary => {:name => "Mary", :age => 38}}
user_data.sort_by{|key, value| value[:age]}

user_data.reject{|key, value| value < 35}
