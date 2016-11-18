require "rrxcell/excelx"
require "rrxcell/sheet"

class Rrxcell::Excelx::Sheet < Rrxcell::Sheet
  def object
    @book.object.sheet(@position)
  end
  
  def row(position)
    Rrxcell::Excelx::Row.new(self, position)
  end
end
