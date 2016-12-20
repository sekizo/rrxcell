require "rrxcell/excel"
require "rrxcell/row"

class Rrxcell::Excel::Row < Rrxcell::Row
  def column(column_position)
    Rrxcell::Excel::Cell.new(self, column_position)
  end
  
  def object
    sheet.object.row(position)
  end
end
