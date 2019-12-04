## Advent of Code 2019
[Advent of Code](https://adventofcode.com/) is a yearly advent calendar with coding puzzles. These are my solutions for 2019's puzzles! I'm uploading myself solving these puzzles over on [my YouTube channel.](https://www.youtube.com/playlist?list=PLJgbigg8xpeVXoTAhn4dDpXMY9-cvwTlB)

I've set up a few helper scripts to make AoC puzzles easier. reindeer.rb will accept a day and puzzle param, and run the algo from day_#.rb. wreath.rb will accept a day, puzzle, and input, and test day_#.rb on a particular input. Many of the puzzles are parsed in the same way, so nutcracker.rb will crack the code and parse inputs in standard formats. My personal inputs are stored as day_#_input.txt.

## How to use this repo
Pull down the repo locally.
Have ruby installed.

### Getting an Answer

- Save input from Advent of Code as day_#_input.txt
- Open a console with ruby installed.
- Run reindeer.rb with the arguments: day, puzzle
```
ruby reindeer.rb <day> <puzzle>

# Example for first puzzle of day 1
ruby reindeer.rb 1 1
# Example for second puzzle of day 1
ruby reindeer.rb 1 2
# Example for first puzzle of day 3
ruby reindeer.rb 3 1
```
This will pull your stored input, parse it, and run the algorithm located in `day_1.rb` or `day_3.rb` depending on the day specified.

### Testing your Algorithm

- Open a console with ruby installed.
- Run wreath.rb wil the arguments: day, puzzle, input
```
ruby wreath.rb <day> <puzzle> <input>

# This will test day 1's first puzzle using 14 as an input
ruby wreath.rb 1 1 14
# returns 2

# This will test day 3's second puzzle using 12 as an input
ruby wrath.rb 3 2 [['R8','U5','L5','D3'], ['U7','R6','D4','L4']]
# returns 6
```
