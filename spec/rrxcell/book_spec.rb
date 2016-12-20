require "spec_helper"

describe Rrxcell::Book do
  let(:book) { Rrxcell.load(path) }
  let(:path) { XLSX_PATH }
  
  it_behaves_like "book_interface"
  
  describe '#path' do
    subject { book.path }
    it { is_expected.to eq path }
  end
end
