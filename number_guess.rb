def play_choice
    puts 'Do you want to play [y/n]'
    answer = gets.chomp
    if answer == 'y'
        puts "I'm going to pick a random number that you will have to guess"
        puts "Enter your guess:"
        guess = gets.chomp
        
    else
        puts 'Thanks for playing'
    end
end


def guess
    


puts play_choice