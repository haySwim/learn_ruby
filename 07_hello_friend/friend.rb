# Friend class, says hello and takes a name as a optional argument.
class Friend
  def greeting(name = nil)
    if name.nil?
      'Hello!'
    else
      "Hello, #{name}!"
    end
  end
end
