require 'spec_helper'

describe Rrxcell do
  it 'has a version number' do
    expect(Rrxcell::VERSION).not_to be nil
  end
  
  describe '#load' do
    subject { Rrxcell.load(path) }
    let(:path) { File.join(Rrxcell::ROOT, "example/book.xlsx") }
    
    it { is_expected.to be_a Rrxcell::Book }
    
    context "with empty path" do
      let(:path) { "" }
      it { expect { subject }.to raise_error(StandardError) }
    end
  end
end
