require "rrxcell/excel"
require "rrxcell/book"

class Rrxcell::Excel::Book < Rrxcell::Book
  def object
    @object ||= Roo::Excel.new(@path)
  end
  
  def sheet(position)
    Rrxcell::Excel::Sheet.new(self, position)
  end
end
