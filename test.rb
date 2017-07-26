require_relative 'game.rb'

puts "\n\n === Game Start ===\n\n"

## Create the first two players, Jose and Lora. Initialize them with usernames.
jose = Player.new("Jverdugo337")
lora = Player.new("LHines868")

## prompt the player to press enter in order to run the next part of the code.
puts "Press enter to begin."
gets.chomp

## Have each player attack the other.
jose.attack(lora)
lora.attack(jose)
