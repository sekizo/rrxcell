class Rrxcell::Row
  attr_reader :object, :sheet, :position
  
  def initialize(sheet, position)
    super()
    @sheet = sheet
    @position = position
  end
  
  def [](position)
    column(position)
  end
  
  def book
    sheet.book
  end
  
  def column(position)
    raise ShouldBeImplementedError
  end
end
