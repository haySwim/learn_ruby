# Class
class RPNCalculator
  attr_reader :stack, :value

  def initialize
    @stack = []
    @value = 0
  end

  def push(num)
    @stack.push(num)
  end

  def plus
    if @stack.length > 1
      @value = @stack.pop(2).inject(:+)
    elsif @stack.length == 0
      raise "calculator is empty"
    else
      @value += @stack.pop
    end
    @value
  end

  def minus
    if @stack.length > 1
      @value = @stack.pop(2).inject(:-)
    elsif @stack.length == 0
      raise "calculator is empty"
    else
      @value -= @stack.pop
    end
    @value
  end

  def divide
    if @stack.length > 1
      @value = @stack[-2].to_f / @stack[-1].to_f
      @stack.pop(2)
      @value
    elsif @stack.length == 0
      raise "calculator is empty"
    else
      @value /= @stack.pop.to_f
    end
    @value
  end

  def times
    if @stack.length > 1
      @value = @stack.pop(2).inject(:*)
    elsif @stack.length == 0
      raise "calculator is empty"
    else
      @value *= @stack.pop
    end
    @value
  end
end
