shared_examples "book" do
  let(:position) { 0 }
  
  describe '#sheet' do
    subject { book.sheet(position) }
    it { is_expected.to be_a Rrxcell::Sheet }
  end
  
  describe '#[]' do
    subject { book[position] }
    it { is_expected.to be_a Rrxcell::Sheet }
  end
end
