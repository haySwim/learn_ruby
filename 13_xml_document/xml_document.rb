# Class
class XmlDocument
  def initialize(indent = false)
  end

  def method_missing(tag_name, attributes = {})
    if block_given?
      "<#{tag_name}>#{yield}</#{tag_name}>"
    elsif attributes == {}
      "<#{tag_name}/>"
    else
      attributes.each do |key, value|
        @tag = "<#{tag_name} #{key}='#{value}'/>"
      end
      @tag
    end
  end

  def send(name)
    "<#{name}/>"
  end
end
