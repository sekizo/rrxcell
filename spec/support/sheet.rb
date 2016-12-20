shared_examples "sheet" do
  let(:book) { Rrxcell.load(path) }
  let(:sheet) { book.sheet(position) }
  let(:position) { 0 }
  
  # expected values
  let(:valid_sheet_name) { "Sheet1" }
  
  describe '#[]' do
    subject { sheet[position] }
    it { is_expected.to be_a Rrxcell::Row }
  end
  
  describe '#address' do
    subject { sheet.address(cell_address) }
    let(:cell_address) { "A1" }
    
    it { expect(sheet).to be_respond_to(:address) }
    it { is_expected.to be_a Rrxcell::Cell }
    
    describe 'value' do
      subject { sheet.address(cell_address).value }
      context 'with valid A1-format string' do
        let(:cell_address) { "AB2" }
        it { is_expected.to include("AB2") }
      end
    end
    
    context 'with invalid address' do
      let(:cell_address) { "a_5" }
      it { expect { subject }.to raise_error(RuntimeError) }
    end
  end
  
  describe '#name' do
    subject { sheet.name }
    
    it { is_expected.to be_a String }
    it { is_expected.to eq valid_sheet_name }
  end
  
  describe '#row' do
    subject { sheet.row(position) }
    it { is_expected.to be_a Rrxcell::Row }
  end
end
