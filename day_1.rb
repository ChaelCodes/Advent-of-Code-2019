CRACK = :split_int

def deliver(input, puzzle)
  input.map!(&:to_i)
  if puzzle == 1
    input.map! { |mass| calculate_fuel(mass) }
  else
    input.map! { |mass| total_fuel(mass) }
  end
  # input.sum
end

def calculate_fuel(mass)
  (mass / 3) - 2
end

def total_fuel(mass)
  initial_fuel = calculate_fuel(mass)
  return 0 if initial_fuel < 1
  initial_fuel + total_fuel(initial_fuel)
end
