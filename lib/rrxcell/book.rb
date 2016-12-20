class Rrxcell::Book
  attr_reader :path

  def initialize(path)
    super()
    @path = path
  end
  
  def [](position_or_sheet_name)
    case position_or_sheet_name
    when Numeric
      sheet(position_or_sheet_name)
    when String
      sheet(sheet_position_by_name!(position_or_sheet_name))
    else
      raise "invalid sheet position"
    end
  end
  
  def address(cell_address)
    sheet_position, row_position, column_position =
      Rrxcell::Addressing.cell_address_to_sheet_row_column_position(cell_address, self)
    
    sheet(sheet_position).row(row_position).column(column_position)
  end
  
  def sheet(position)
    raise ShouldBeImplementedError
  end
  
  def sheets
    sheet_names.map { |s| sheet(sheet_names.index(s)) }
  end
  
  def sheet_names
    object.sheets
  end
  
  protected
  
    attr_reader :book

  private
  
    def cell_address_to_sheet_row_column_position(cell_address)
      validate_cell_address!(cell_address)
    end
    
    def sheet_position_by_name!(name)
      pos = sheet_names.index(name)
      raise if pos.nil?
      pos
    end
end
