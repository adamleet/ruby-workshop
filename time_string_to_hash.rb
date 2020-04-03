my_string_time = '01:23:34.323'
my_hash_time = {}

my_hash_time['hh'] = my_string_time.split(':') [0]
my_hash_time['mm'] = my_string_time.split(':') [1]
my_hash_time['ss'] = my_string_time.split(':') [2].split('.')[0]
my_hash_time['s'] = my_string_time.split(':') [2].split('.')[1]

puts my_hash_time['hh']
puts my_hash_time['mm']
puts my_hash_time['ss']
puts my_hash_time['s']