def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep-beep!"
end 

def use_headlights(brightness="Low-beam")
  puts "Turning on the headlints on #{brightness}"
  puts "Watch out for deer!"
end

def mileage(miles_driven, gas_used)
  if gas_used == 0
    return 0.0
  else 
   miles_driven / gas_used
  end
end

