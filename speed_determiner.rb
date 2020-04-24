=begin
Green light:
    Sunny, all conditions: speed_limit
    Rainy, distance >= 50ft: speed_limit
    Rainy, distance < 50ft: 90% speed_limit
Yellow light:
    Sunny, distance >= 50ft: 80% speed_limit
    Sunny, distance < 50ft: 50% speed_limit
    Rainy, distance >= 50ft: 80% speed_limit
    Rainy, distance < 50ft: 25% speed_limit
Red light:
    Sunny, distance >= 50ft: 50% speed_limit
    Sunny, distance < 50ft: 0% speed_limit
    Rainy, distance >= 50ft: 25% speed_limit
    Rainy, distance <= 50ft: 0% speed_limit
=end

def drive_decision(traffic_signal, weather, distance_to_signal, speed_limit)
    if traffic_signal == :green
        if weather == :sunny
            speed_limit
        elsif distance_to_signal >= 50
            speed_limit
        else
            speed_limit * 0.9
        end
    elsif traffic_signal == :yellow
        if weather == :sunny && distance_to_signal >= 50
            speed_limit * 0.8
        elsif weather == :sunny && distance_to_signal < 50
            speed_limit * 0.5
        elsif weather == :rainy && distance_to_signal >= 50
            speed_limit * 0.8
        elsif weather == :rainy && distance_to_signal < 50
            speed_limit * 0.25
        else
            raise "Condition not handled"
        end
    else #red light
        if weather == :sunny && distance_to_signal >= 50
            speed_limit * 0.5
        elsif weather == :sunny && distance_to_signal < 50
            speed_limit * 0
        elsif weather == :rainy && distance_to_signal >= 50
            speed_limit * 0.25
        else
            0 #all conditions should stop the car
        end
    end
end

puts drive_decision(:green, :sunny, 25,35)
puts drive_decision(:yellow, :rainy, 50,5)