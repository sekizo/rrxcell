require "rrxcell/excel"
require "rrxcell/book"

class Rrxcell::Excel::Book < Rrxcell::Book
  def object
    @object ||= Roo::Excel.new(path)
  end
  
  def sheet(sheet_position)
    Rrxcell::Excel::Sheet.new(self, sheet_position)
  end
end
