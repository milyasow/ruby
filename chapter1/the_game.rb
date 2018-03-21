# Get My number game
# Written by Milyasow

puts "Welcome to my game!" 
print "Enter your name: "

name = gets.chomp

puts "Welcome, #{name}!"

puts "I have a number between 1 and 100. Can you guess it?"
target = rand(100) + 1

guessed_it = false
number_guesses = 0

until guessed_it || number_guesses == 10

puts "You have #{10 - number_guesses} guesses left. Enter your number:"  

guess = gets.to_i

  if guess == 0
    puts "My dear friend! I can compare numbers only!" 
  elsif guess > target 
    puts "Oops, your guess was HIGH!"
  elsif guess < target
    puts "Oops, your guess was LOW!"
  elsif guess == target
    puts "Congratulations, #{name}! The number was #{target}. You have guessed it in #{number_guesses} tries!"
    guessed_it = true
  end

number_guesses += 1

end

unless guessed_it
  puts "Sorry, #{name}, you didn't guess my number in #{number_guesses} guesses... It was #{target}. Maybe in another life you will be lucky!"
end
