require "spec_helper"

describe Rrxcell::Excel::Sheet do
  let(:sheet) { book.sheet(position) }
  
  let(:position) { 0 }
  let(:book) { Rrxcell.load(path) }

  let(:path) { XLS_PATH }

  it_behaves_like "sheet"
  
  describe '#object' do
    subject { sheet.object }
    it { is_expected.to be_a Spreadsheet::Excel::Worksheet }
  end
  
  describe '#book' do
    subject { sheet.book }
    it { is_expected.to be_a Rrxcell::Excel::Book }
  end
end
