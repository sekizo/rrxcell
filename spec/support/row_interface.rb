shared_examples "row_interface" do
  let(:book) { Rrxcell.load(path) }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }

  describe '#column' do
    it { expect(row).to be_respond_to(:column)  }
  end
  
  describe '#sheet' do
    subject { row.sheet }
    it { is_expected.to be_a Rrxcell::Sheet }
  end
  
  describe '#book' do
    subject { row.book }
    it { is_expected.to be_a Rrxcell::Book }
  end
end
