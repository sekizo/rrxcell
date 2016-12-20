require "rrxcell/excelx"
require "rrxcell/cell"

class Rrxcell::Excelx::Cell < Rrxcell::Cell
  def type
    sheet.object.celltype(row.position + 1 , position + 1)
  end
  
  def object
    sheet.object.cell(row.position + 1, position + 1)
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
      row.object.at(position)
    end
    
    def value_as_time
      h = (raw_value / 3600).to_i
      m = (((raw_value / 60).to_i) % 60).to_i
      s = (raw_value % 60).to_i
      today = Date.today
      Time.new(today.year, today.month, today.day, h, m, s)
    end
end
