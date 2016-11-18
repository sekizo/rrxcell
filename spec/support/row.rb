shared_examples "row" do
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  let(:book) { Rrxcell.load(path) }
  let(:position) { 0 }

  describe '#column' do
    subject { row.column(position) }
    it { is_expected.to be_a Rrxcell::Cell }
  end
  
  describe '#[]' do
    subject { row[position] }
    it { is_expected.to be_a Rrxcell::Cell }
  end
  
  describe '#sheet' do
    subject { row.sheet }
    it { is_expected.to be_a Rrxcell::Sheet }
  end
  
  describe '#position' do
    subject { row.position }
    it { is_expected.to eq row_position }
  end
end
