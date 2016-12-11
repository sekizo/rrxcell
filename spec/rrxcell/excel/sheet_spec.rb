require "spec_helper"

describe Rrxcell::Excel::Sheet do
  let(:path) { File.join(Rrxcell::ROOT, "example/book.xls") }

  it_behaves_like "sheet"

end
