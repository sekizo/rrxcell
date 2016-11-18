class Rrxcell::Sheet
  attr_reader :book, :position
  
  def initialize(book, position)
    super()
    @book = book
    @position = position
  end
  
  def [](position)
    row(position)
  end
  
  def row(position)
    raise ShouldBeImplementedError
  end
end
