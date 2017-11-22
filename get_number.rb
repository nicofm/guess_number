# Juego "Adivina el numero"
# Get My Number Game

# by Nicolas Frasson Marti

puts "Bienvenid@ a 'Adivina el numero!'"

#gets player name and greets
print "Como te llamas? "
input = gets
name = input.chomp
puts "Bienvenid@, #{name}!"

#guarda un numero random que el usuario debe adivinar
puts "Tengo un numero entre 1 y 100. Lo podes adivinar?"
target = rand(100) + 1

#Track player guesses.
num_guesses = 0

#track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "Tenes #{10 - num_guesses} chances de adivinar."
  print "Adivina el numero: "
  guess = gets.to_i

  num_guesses += 1

  #compare guess to target
  #print appropiate message
  if guess < target
  puts "Ups! te quedaste cort@!!"
  elsif guess > target
  puts "Ups! te pasaste!"
  elsif guess == target
  puts "Muy bien, #{name}!"
  puts "Adivinaste mi numero en #{num_guesses} intentos!"
  guessed_it = true
  end

end

#if player runs out of chances
unless guessed_it
  puts "Uh! No pudiste adivinar mi numero. (Era el #{target}.)"
end
