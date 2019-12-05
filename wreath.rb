day = ARGV[0]
puzzle = ARGV[1]
string = ARGV[2]

require "./nutcracker.rb"
require "./day_#{day}.rb"

input = Nutcracker.send(CRACK, string)

print deliver(input, puzzle)
print "\n"
