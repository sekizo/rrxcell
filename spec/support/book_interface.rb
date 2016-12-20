shared_examples "book_interface" do
  let(:book) { Rrxcell.load(path) }
  
  describe '#sheet' do
    it { expect(book).to be_respond_to(:sheet)  }
  end
end
