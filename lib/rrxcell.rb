require "rrxcell/version"

module Rrxcell
  ROOT  = File.expand_path(File.join(File.dirname(__FILE__), ".."))
  LIB   = File.join(ROOT, "lib")
  
  def self.load(path)
    case File.extname(path)
    when /\A\.xlsx\z/
      Rrxcell::Excelx::Book.new(path)
    when /\A\.xls\z/
      Rrxcell::Excel::Book.new(path)
    else
      raise "invalid path '#{path}'"
    end
  end
end

$: << Rrxcell::LIB

Dir.glob(File.join(Rrxcell::LIB, "**/*.rb")).each do |entry|
  require entry
end
