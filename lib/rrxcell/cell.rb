class Rrxcell::Cell
  attr_reader :row, :position
  
  def initialize(row, position)
    super()
    @row = row
    @position = position
  end
  
  def book
    row.book
  end
  
  def object
    raise ShouldBeImplementedError
  end
  
  def sheet
    row.sheet
  end
  
  def value
    raise ShouldBeImplementedError
  end
end
