shared_examples "sheet_interface" do
  let(:book) { Rrxcell.load(path) }
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  describe '#address' do
    it { expect(sheet).to be_respond_to(:address) }
  end
  
  describe '#book' do
    subject { sheet.book }
    it { is_expected.to be_a Rrxcell::Book }
  end
  
  describe '#row' do
    it { expect(sheet).to be_respond_to(:row)  }
  end
end
