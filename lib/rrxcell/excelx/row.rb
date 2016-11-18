require "rrxcell/excelx"
require "rrxcell/row"

class Rrxcell::Excelx::Row < Rrxcell::Row
  def column(position)
    Rrxcell::Excelx::Cell.new(self, position)
  end
  
  def object
    @sheet.object.row(@position + 1)
  end
end
