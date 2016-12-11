require "rrxcell/excel"
require "rrxcell/row"

class Rrxcell::Excel::Row < Rrxcell::Row
  def column(position)
    Rrxcell::Excel::Cell.new(self, position)
  end
  
  def object
    @sheet.object.row(@position)
  end
end
