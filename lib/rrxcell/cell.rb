class Rrxcell::Cell
  attr_reader :row
  
  def initialize(row, position)
    super()
    @row = row
    @position = position
  end
  
  def value
    raise ShouldBeImplementedError
  end
end
