require "spec_helper"

describe Rrxcell::Excel::Row do
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xls") }
  
  it_behaves_like "row"
end
