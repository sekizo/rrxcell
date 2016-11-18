require 'spec_helper'

describe Rrxcell::Excel::Book do
  let(:book) { described_class.new(path) }
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xls") }

  it_behaves_like "book"
  
  describe '#sheet' do
    subject { book.sheet(position) }
    let(:position) { 0 }
    it { is_expected.to be_a Rrxcell::Excel::Sheet }
  end
end
