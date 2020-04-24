def get_animal_sound(animal_type)
    case animal_type
    when :cat
        "Meow"
    when :dog
        "Woof"
    when :cow
        "Moo"
    when :goat
        "Bleat"
    when :bird
        "Tweet"
    when :lion
        "Roar"
    else
        nil
    end
end

puts get_animal_sound(:dog)
puts get_animal_sound(:bird)
puts get_animal_sound(:goat)
