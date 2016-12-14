$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rrxcell'

Dir["./spec/support/**/*.rb"].sort.each { |f| require f}

XLSX_PATH = File.join(Rrxcell::ROOT, "example/book.xlsx")
XLS_PATH  = File.join(Rrxcell::ROOT, "example/book.xls")
