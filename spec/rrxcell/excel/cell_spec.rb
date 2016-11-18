require "spec_helper"

describe Rrxcell::Excel::Cell do
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xls") }
  
  it_behaves_like "cell"
end
