# Reverses each word in the block passed to it.
def reverser
  yield.split.each(&:reverse!).join(' ')
end

# Adds num to the block passed.
def adder(num = 1)
  yield + num
end

# Repeats the block passed to it n times.
def repeater(n = 1)
  n.times { yield }
end
