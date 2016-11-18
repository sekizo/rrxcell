shared_examples "row_interface" do
  describe '#column' do
    it { expect(row).to be_respond_to(:column)  }
  end
end
