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
  
  def address(cell_address)
    row_position, column_position = Rrxcell::Addressing.cell_address_to_row_column_position(cell_address)
    
    row(row_position).column(column_position)
  end
  
  def name
    book.sheet_names[position]
  end
  
  def object
    raise ShouldBeImplementedError
  end
  
  def row(row_position)
    raise ShouldBeImplementedError
  end
  
  private
  
end
