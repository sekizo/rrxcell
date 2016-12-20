require "spec_helper"

describe Rrxcell::Excelx::Sheet do
  let(:sheet) { book.sheet(position) }
  
  let(:position) { 0 }
  let(:book) { Rrxcell.load(path) }
  let(:path) { XLSX_PATH }

  it_behaves_like "sheet"

  describe '#object' do
    subject { sheet.object }
    it { is_expected.to be_a Roo::Excelx }
  end
  
  describe '#book' do
    subject { sheet.book }
    it { is_expected.to be_a Rrxcell::Excelx::Book }
  end
end
