class Rrxcell::Book
  attr_reader :path

  def initialize(path)
    super()
    @path = path
  end
  
  def [](position)
    sheet(position)
  end
  
  def sheet(position)
    raise ShouldBeImplementedError
  end
  
  protected
  
    attr_reader :book

end
