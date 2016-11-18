require "spec_helper"

describe Rrxcell::Excelx::Cell do
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xlsx") }
  
  it_behaves_like "cell"
end
