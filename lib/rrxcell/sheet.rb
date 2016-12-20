class Rrxcell::Sheet
  attr_reader :book, :position
  
  def initialize(book, position)
    super()
    @book = book
    @position = position
  end
  
  def [](row_position)
    row(row_position)
  end
  
  def object
    raise ShouldBeImplementedError
  end
  
  def row(row_position)
    raise ShouldBeImplementedError
  end
end
