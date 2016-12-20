require 'spec_helper'

describe Rrxcell::Excelx::Book do
  let(:book) { described_class.new(path) }
  let(:path) { XLSX_PATH }

  it_behaves_like "book"
  
  describe '#sheet' do
    subject { book.sheet(position) }
    let(:position) { 0 }
    it { is_expected.to be_a Rrxcell::Excelx::Sheet }
  end
  
  describe '#object' do
    subject { book.object }
    it { is_expected.to be_a Roo::Excelx }
  end
end
