require "rrxcell/excel"
require "rrxcell/cell"

class Rrxcell::Excel::Cell < Rrxcell::Cell
  def value
    @row.sheet.book.object.cell(@row.position + 1, @position + 1, @row.sheet.position)
  end
end
