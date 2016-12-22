module Rrxcell::Addressing
  ALPHABET_CHARCTORS = 26

  class << self
    def cell_address_to_column_position(cell_address)
      v = 0
      factor = 1
      
      column_string(cell_address).reverse.each_char do |char|
        _v = char.downcase.ord - "a".ord + 1
        v += ((_v * factor) - 1)
        factor += ALPHABET_CHARCTORS
      end

      v
    end
    
    def cell_address_to_row_column_position(cell_address)
      [
        cell_address_to_row_position(cell_address),
        cell_address_to_column_position(cell_address)
      ]
    end
    
    def cell_address_to_row_position(cell_address)
      row_string(cell_address).to_i - 1
    end
    
    def cell_address_to_sheet_position(cell_address, book = nil)
      validate_book!(book)
      book.sheet_names.index(sheet_string(cell_address))
    end
    
    def cell_address_to_sheet_row_column_position(cell_address, book = nil)
      validate_book!(book)
      [
        cell_address_to_sheet_position(cell_address, book),
        cell_address_to_row_column_position(cell_address)
      ].flatten
    end
    
    private
      
      def column_string(cell_address)
        validate_cell_address!(cell_address)
        cell_address.scan(/\!*([[:alpha:]]+)/).flatten.last
      end
      
      def row_string(cell_address)
        validate_cell_address!(cell_address)
        cell_address.match(/[0-9]+\z/).to_s
      end
      
      def sheet_string(cell_address)
        validate_cell_address!(cell_address)
        cell_address.scan(/\A(.+)\!/).flatten.first
      end
      
      def validate_cell_address!(cell_address)
        return true if cell_address.match(/\A[[:alpha:]]+[0-9]+\z/)
        
        unless cell_address.match(/\A.+\![[:alpha:]]+[0-9]+\z/)
          raise "invalid address" 
        end
        true
      end
      
      def validate_book!(book)
        raise "invalid Rrxcell::Book" unless book.is_a?(Rrxcell::Book)
        true
      end
  end
end
