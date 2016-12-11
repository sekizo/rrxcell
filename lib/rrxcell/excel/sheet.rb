require "rrxcell/excel"
require "rrxcell/sheet"

class Rrxcell::Excel::Sheet < Rrxcell::Sheet
  def object
    @object ||= @book.object.worksheets[@position]
  end
  
  def row(position)
    Rrxcell::Excel::Row.new(self, position)
  end
end
