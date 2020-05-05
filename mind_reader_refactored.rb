def mind_reader magic_number
    max_attempts = 3
    attempt = 0
    guess = nil
    loop do
        print "What's your guess?"
        guess = gets.chomp.to_i
        break if attempt >= max_attempts
        break if guess == magic_number
        attempt += 1
        puts 'Nope! try again'
    end
    puts guess == magic_number ? "That's right" : "You ran out of guesses, try again"
end



