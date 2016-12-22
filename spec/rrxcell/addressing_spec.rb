require "spec_helper"

describe Rrxcell::Addressing do
  let(:addressing) { described_class }
  let(:address) { "Sheet1!AB2" }
  
  # expected values
  let(:sheet_position) { 0 }
  let(:row_position) { 1 }
  let(:column_position) { 27 }

  # valid book
  let(:path) { XLSX_PATH }
  let(:book) { Rrxcell.load(path) }
  
  describe '#cell_address_to_column_position' do
    subject { addressing.cell_address_to_column_position(address) }
    
    it { is_expected.to eq column_position }
  end
  
  describe '#cell_address_to_row_column_position' do
    subject { addressing.cell_address_to_row_column_position(address) }
    it { is_expected.to eq [row_position, column_position] }
  end
  
  describe '#cell_address_to_row_position' do
    subject { addressing.cell_address_to_row_position(address) }
    it { is_expected.to eq row_position }
  end
  
  describe '#cell_address_to_sheet_position' do
    subject { addressing.cell_address_to_sheet_position(address, book) }
    
    context 'without book' do
      let(:book) { nil }
      it { expect { subject }.to raise_error(RuntimeError) }
    end
    
    context 'with valid book' do
      it { is_expected.to eq sheet_position }
    end
  end
  
  describe '#cell_address_to_sheet_row_column_position' do
    subject { addressing.cell_address_to_sheet_row_column_position(address, book) }
    
    context 'without book' do
      let(:book) { nil }
      it { expect { subject }.to raise_error(RuntimeError) }
    end
    
    context 'with vaid book' do
      it { is_expected.to eq [sheet_position, row_position, column_position] }
    end
  end
end
