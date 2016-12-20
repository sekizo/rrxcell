require "spec_helper"

describe Rrxcell::Excel::Cell do
  let(:path) { XLS_PATH }
  
  let(:book) { Rrxcell.load(path) }
  
  let(:sheet) { book.sheet(sheet_position) }
  let(:sheet_position) { 0 }
  
  let(:row) { sheet.row(row_position) }
  let(:row_position) { 0 }
  
  let(:cell) { row.column(column_position) }
  let(:column_position) { 0 }

  it_behaves_like "cell"
  
  describe '#object' do
    subject { cell.value }
    
    context 'with string' do
      it { is_expected.to be_a String }
    end
    
    context 'with Date' do
      let(:column_position) { 3 }
      it { is_expected.to be_a Date }
    end
    
    context 'with DateTime' do
      let(:row_position) { 1 }
      let(:column_position) { 3 }
      it { is_expected.to be_a DateTime }
    end
    
    context 'with Time' do
      let(:row_position) { 2 }
      let(:column_position) { 3 }
      it { expect(cell.type).to eq :time }
      it { is_expected.to be_a Time }
    end
    
    context 'with Date by formula' do
      let(:row_position) { 0 }
      let(:column_position) { 4 }
      it { expect(cell.type).to eq :date }
      it { is_expected.to be_a Date }
    end
    
    context 'with DateTime by formula' do
      let(:row_position) { 1 }
      let(:column_position) { 4 }
      it { expect(cell.type).to eq :datetime }
      it { is_expected.to be_a DateTime }
    end
  end
end
