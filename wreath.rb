day = ARGV[0]
puzzle = ARGV[1]
input = ARGV[2]

require "./day_#{day}.rb"

print deliver(input, puzzle)
