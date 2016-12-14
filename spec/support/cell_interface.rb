shared_examples "cell_interface" do
  let(:book) { Rrxcell.load(path) }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }
  
  let(:cell) { row.column(column_position) }
  let(:column_position) { 0 }

  describe '#value' do
    subject { cell.value }
    it { expect(cell).to be_respond_to(:value)  }
  end
  
  describe '#object' do
    it { expect(cell).to be_respond_to(:object)  }
  end
  
  describe '#position' do
    subject { cell.position }
    it { is_expected.to be_a Integer }
  end
  
  describe '#row' do
    subject { cell.row }
    it { is_expected.to be_a Rrxcell::Row }
  end
  
  describe '#sheet' do
    subject { cell.sheet }
    it { is_expected.to be_a Rrxcell::Sheet }
  end
  
  describe '#book' do
    subject { cell.book }
    it { is_expected.to be_a Rrxcell::Book }
  end
end
