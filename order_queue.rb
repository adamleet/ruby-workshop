order_queue = ["Tajudeen", "Nimah", "Taqwa", "Maryam", "Rasheed", "Aisha", "Adams", "Abdul Ganeey"]
order_queue.each_with_index do |person, index|
    puts "Processing order for #{person} with number #{index + 1}"
    if index < order_queue.length - 1
        puts "The next on the queue is #{order_queue[index+1]}"
    else
        puts "The last person on the queue is #{person}"
    end
end
