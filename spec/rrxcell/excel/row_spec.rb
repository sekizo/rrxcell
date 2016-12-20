require "spec_helper"

describe Rrxcell::Excel::Row do
  let(:path) { XLS_PATH }
  
  let(:book) { Rrxcell.load(path) }
  
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }

  it_behaves_like "row"

  describe '#object' do
    subject { row.object }
    it { is_expected.to be_a Array }
  end
end
