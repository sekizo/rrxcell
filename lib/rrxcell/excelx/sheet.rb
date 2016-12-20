require "rrxcell/excelx"
require "rrxcell/sheet"

class Rrxcell::Excelx::Sheet < Rrxcell::Sheet
  def object
    book.object.sheet(position)
  end
  
  def row(row_position)
    Rrxcell::Excelx::Row.new(self, row_position)
  end
end
