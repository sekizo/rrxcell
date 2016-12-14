require "rrxcell/excelx"
require "rrxcell/book"

class Rrxcell::Excelx::Book < Rrxcell::Book
  def object
    @object ||= Roo::Excelx.new(path)
  end
  
  def sheet(position)
    Rrxcell::Excelx::Sheet.new(self, position)
  end
end
