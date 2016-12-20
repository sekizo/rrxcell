require "spec_helper"

describe Rrxcell::Row do
  let(:book) { Rrxcell.load(path) }
  let(:path) { XLSX_PATH }
  
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }

  it_behaves_like "row_interface"
end
