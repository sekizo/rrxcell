shared_examples "cell" do
  let(:cell) { row.column(column_position) }
  let(:column_position) { 0 }
  
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  let(:book) { Rrxcell.load(path) }
  
  describe '#value' do
    subject { cell.value }
    it { is_expected.to include "1" }
    it { is_expected.to include "A" }
    
    context "with column position to 1" do
      let(:column_position)  { 1 }
      it { is_expected.to include "B" }
    end
    
    context "with row position to 1" do
      let(:row_position)  { 1 }
      it { is_expected.to include "2" }
    end
  end
end
