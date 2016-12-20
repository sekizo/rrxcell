shared_examples "sheet" do
  let(:book) { Rrxcell.load(path) }
  let(:sheet) { book.sheet(position) }
  let(:position) { 0 }
  
  describe '#row' do
    subject { sheet.row(position) }
    it { is_expected.to be_a Rrxcell::Row }
  end
  
  describe '#[]' do
    subject { sheet[position] }
    it { is_expected.to be_a Rrxcell::Row }
  end
end
