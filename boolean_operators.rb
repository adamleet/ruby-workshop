def truthiness(x,y)
    puts 'AND:', x && y
    puts 'OR:', x || y
    puts '!AND:', !(x && y)
    puts '!OR:', !(x || y)
end

truthiness(true,true)
truthiness(true,false)
truthiness(false,false)
truthiness(false,true)
truthiness(0,true)
truthiness(nil,false)