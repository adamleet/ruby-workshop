def drive_decision_when_green(weather, distance_to_signal,speed_limit)
    case weather
    when :sunny
        speed_limit
    when :rainy
        if distance_to_signal >= 50
            speed_limit
        else
            speed_limit * 0.9
        end
    else
        raise "Not handled"
    end
end
def drive_decision_when_yellow(weather, distance_to_signal, speed_limit)
    case weather
    when :sunny
        if distance_to_signal >= 50
            speed_limit * 0.8
        else
            speed_limit * 0.5
        end
    when :rainy
        if distance_to_signal >= 50
            speed_limit * 0.8
        else
            speed_limit * 0.25
        end
    else
        raise "Not handled"
    end
end

def drive_decision_when_red(weather, distance_to_signal, speed_limit)
    if distance_to_signal >= 50
        case weather
        when :sunny
            speed_limit * 0.5
        when :rainy
            speed_limit * 0.25
        else
            raise "Not handled"
        end
    else
        0
    end
end

def drive_decision(traffic_signal, weather, distance_to_signal, speed_limit)
    raise "Unhandled weather condition" unless valid_weather_condition?(weather)
    case traffic_signal
    when :green
        drive_decision_when_green(weather, distance_to_signal, speed_limit)
    when :yellow
        drive_decision_when_yellow(weather, distance_to_signal, speed_limit)
    else
        drive_decision_when_red(weather, distance_to_signal, speed_limit)
    end
end

puts drive_decision(:yellow, :sunny, 25, 35)
puts drive_decision(:red, :rainy, 25, 35)
puts drive_decision(:green, :rainy, 25, 35)
puts drive_decision(:green, :sunny, 25, 35)

def valid_weather_condition?(weather)
    [:sunny,:rainy].include?(weather.to_sym)
end

#Guard clause

def drive_decision(traffic_signal, weather, distance_to_signal, speed_limit)
    raise "Unhandled weather condition" unless valid_weather_condition?(weather)
end


