# Rock, Paper, Scissors game
# Written in Ruby by ChatGPT

# Define the possible options
OPTIONS = ["rock", "paper", "scissors"]

# Get the player's choice
print "Choose rock, paper, or scissors: "
player_choice = gets.chomp.downcase

# Make sure the player's choice is valid
until OPTIONS.include?(player_choice)
  print "Invalid choice. Choose rock, paper, or scissors: "
  player_choice = gets.chomp.downcase
end

# Let the player know what they chose
puts "You chose #{player_choice}."

# Generate the computer's choice
computer_choice = OPTIONS.sample
puts "The computer chose #{computer_choice}."

# Determine the winner
if player_choice == computer_choice
  puts "It's a tie!"
elsif player_choice == "rock" && computer_choice == "scissors" ||
      player_choice == "paper" && computer_choice == "rock" ||
      player_choice == "scissors" && computer_choice == "paper"
  puts "You win!"
else
  puts "The computer wins!"
end
