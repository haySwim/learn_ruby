# Adds two numbers.
def add(a, b)
  a + b
end

# Subtracts two numbers.
def subtract(a, b)
  a - b
end

# Returns the sum of multiple  numbers.
def sum(numbers)
  numbers.inject(0, :+)
end

# Returns the product of any multiple numbers.
def multiply(*numbers)
  numbers.inject(1, :*)
end

# Returns the first argument raised the power of the second argument.
def power(a, b)
  a**b
end

# Returns the factorial of a number.
def factorial(number)
  (1..number).inject(1, :*)
end
