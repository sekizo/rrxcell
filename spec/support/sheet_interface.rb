shared_examples "sheet_interface" do
  describe '#row' do
    it { expect(sheet).to be_respond_to(:row)  }
  end
end
