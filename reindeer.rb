day = ARGV[0]
puzzle = ARGV[1]
require "./nutcracker.rb"
require "./day_#{day}.rb"

file = File.read("day_#{day}_input.txt")

input = Nutcracker.send(CRACK, file)

present = deliver(input, puzzle)

print present
