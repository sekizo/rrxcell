require "spec_helper"

describe Rrxcell::Excelx::Sheet do
  let(:sheet) { book.sheet(:position) }
  
  let(:position) { 0 }
  let(:book) { Rrxcell.load(path) }
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xlsx") }

  it_behaves_like "sheet"

end
