require "spec_helper"

describe Rrxcell::Book do
  let(:book) { Rrxcell.load(path) }
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xlsx") }
  
  it_behaves_like "book_interface"
  
  describe '#path' do
    subject { book.path }
    it { is_expected.to eq path }
  end
end
