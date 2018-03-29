# My game v2
# written by milyasow

puts "Welcome to my Game v2!" 
puts "What is your name, boy? "

name = gets.chomp

puts "Nice to meet you, #{name}!"
puts "I have a number from 1 to 100. Can you guess it?"

target = rand(100) + 1

number_guesses = 0

guessed = false

until guessed || number_guesses == 10

  puts "You have #{10 - number_guesses} guesses left. Enter your number!"

  guess = gets.to_i

  if guess > target 
    puts "Oops, your guess was HIGH!"
  elsif guess < target 
    puts "Oops, your guess was LOW!"
  elsif guess == target 
    puts "Goob job, #{name}! You have guessed my number in #{number_guesses} guesses! "
    guessed = true
  end

  number_guesses += 1

end

if number_guesses == 10
  puts "Sorry boy, you didn't get my number in 10 guesses! It was #{target}."
end
 
