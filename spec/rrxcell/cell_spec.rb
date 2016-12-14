require "spec_helper"

describe Rrxcell::Cell do
  let(:path) { XLSX_PATH }
  
  it_behaves_like "cell_interface"
end
