shared_examples "book_interface" do
  describe '#sheet' do
    it { expect(book).to be_respond_to(:sheet)  }
  end
end
