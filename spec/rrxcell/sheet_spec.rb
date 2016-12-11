require "spec_helper"

describe Rrxcell::Sheet do
  let(:sheet) { book.sheet(position) }
  
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xlsx") }
  let(:book) { Rrxcell.load(path) }
  let(:position) { 0 }
  
  it_behaves_like "sheet_interface"
end
