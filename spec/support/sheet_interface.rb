shared_examples "sheet_interface" do
  let(:book) { Rrxcell.load(path) }
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  describe '#row' do
    it { expect(sheet).to be_respond_to(:row)  }
  end
  
  describe '#book' do
    subject { sheet.book }
    it { is_expected.to be_a Rrxcell::Book }
  end
end
