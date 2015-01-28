# Measures the execution time for a passed block
# and returns the average across n tests.
def measure(n = 1)
  start_time = Time.now
  n.times { yield }
  end_time = Time.now - start_time

  end_time / n
end
