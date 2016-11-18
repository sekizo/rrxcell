require "spec_helper"

describe Rrxcell::Excelx::Row do
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xlsx") }
  
  it_behaves_like "row"
end
