require "spec_helper"

describe Rrxcell::Sheet do
  let(:path) { XLSX_PATH }
  
  it_behaves_like "sheet_interface"
end
