class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @indent_level = 0
  end

  def method_missing(method_name, *args, &block)
    attributes = args[0] || {}
    str = ""
    str << ("  " * @indent_level) if @indent
    str << "<#{method_name}"
    attributes.each_pair do |key, value|
      str << " #{key}='#{value}'"
    end
    if block
      str << ">"
      str << "\n" if @indent
      @indent_level += 1
      str << yield
      @indent_level -= 1
      str << ("  " * @indent_level) if @indent
      str << "</#{method_name}>"
      str << "\n" if @indent

    else
      str << "/>"
      str << "\n" if @indent
    end
    str
  end
end