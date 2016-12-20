shared_examples "book" do
  let(:position) { 0 }
  
  describe '#[]' do
    subject { book[position] }
    
    context 'with numeric position' do
      it { is_expected.to be_a Rrxcell::Sheet }
    end
    
    context 'with string position as sheet name' do
      context 'with valid sheet name' do
        let(:position) { "Sheet1" }
        it { is_expected.to be_a Rrxcell::Sheet }
        it { expect(subject.name).to eq position }
      end
      
      context 'with invalid sheet_name' do
        let(:position) { "Invalid Sheet Name" }
        it { expect { subject }.to raise_error(RuntimeError) }
      end
    end
    
    context 'with invalid position' do
      let(:position) { :Sheet1 }
      it { expect { subject }.to raise_error(RuntimeError) }
    end
  end

  describe '#address' do
    subject { book.address(cell_address) }
    let(:cell_address) { "Sheet1!A1" }
    
    it { expect(book).to be_respond_to(:address) }
    it { is_expected.to be_a Rrxcell::Cell }
    
    describe 'value' do
      subject { book.address(cell_address).value }
      context 'with valid A1-format string' do
        let(:cell_address) { "Sheet1!AB2" }
        it { is_expected.to include("AB2") }
      end
    end
    
    context 'with invalid address' do
      let(:cell_address) { "a_5" }
      it { expect { subject }.to raise_error(RuntimeError) }
    end
  end
  
  describe '#sheet' do
    subject { book.sheet(position) }
    it { is_expected.to be_a Rrxcell::Sheet }
  end
  
  describe '#sheets' do
    subject { book.sheets }
    it { is_expected.to be_a Array }
    it { is_expected.to include Rrxcell::Sheet }
  end
  
  describe '#sheet_names' do
    subject { book.sheet_names }
    it { is_expected.to be_a Array }
    it { is_expected.to include String }
  end
end
