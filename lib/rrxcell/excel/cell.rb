require "rrxcell/excel"
require "rrxcell/cell"

class Rrxcell::Excel::Cell < Rrxcell::Cell
  def type
    book.object.celltype(row.position + 1 , position + 1, sheet.position)
  end
  
  def value
    case type
    when :time
      value_as_time
    else
      raw_value
    end
  end
  
  private
  
    def raw_value
      book.object.cell(row.position + 1, position + 1, sheet.position)
    end
    
    def value_as_time
      h = (raw_value / 3600).to_i
      m = (((raw_value / 60).to_i) % 60).to_i
      s = (raw_value % 60).to_i
      today = Date.today
      Time.new(today.year, today.month, today.day, h, m, s)
    end
end
