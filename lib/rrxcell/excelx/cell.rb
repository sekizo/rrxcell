require "rrxcell/excelx"
require "rrxcell/cell"

class Rrxcell::Excelx::Cell < Rrxcell::Cell
  def value
    @row.object.at(@position)
  end
end
