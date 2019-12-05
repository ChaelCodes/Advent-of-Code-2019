CRACK = :comma_delimeted_int

def deliver(input, puzzle)
  if puzzle == '1'
    operate(input, 12, 2)
  elsif puzzle == '2'
    (0..99).each do |noun|
      (0..99).each do |verb|
        output = operate(input.dup, noun, verb)
        if output == 19690720
          return 100 * noun + verb
        end
      end
    end
    'Not Found'
  end
end

def operate(input, noun, verb)
  input[1] = noun
  input[2] = verb
  input = operand(0, input)
  input[0]
end

def operand(i, input)
  return input if input[i] == 99
  a = input[i+1]
  b = input[i+2]
  location = input[i+3]
  return [0] unless (input[a] && input[b])
  return[0] unless [1,2].include?(input[i])
  begin
    input[location] = input[i] == 1 ? input[a] + input[b] : input[a] * input[b]
  rescue
    print "op: #{input[i]} #{input[a]} #{input[b]}\n"
  end
  operand(i+4, input)
end
