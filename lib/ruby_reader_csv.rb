require "ruby_reader_csv/version"
require 'csv'
module RubyReaderCsv
  class Error < StandardError; end
 
  
  
end
class CsvReader
    def initialize
        @hash ={}
        @total = 0.0
    end    
    def read_in_csv_data(csv_file_name)
        CSV.foreach(csv_file_name, headers: true) do |row|
            #sumo el precio al total
            @total += Float(row["Amount"])
            #si el ISBN ya esta en el hash le sumo una unidad mas y si no esta lo agrego cin un valor 1
            if @hash.has_key?((row["ISBN"]).to_sym)               
                @hash[row["ISBN"].to_sym] =  @hash[row["ISBN"].to_sym] +1 
            else
                @hash[row["ISBN"].to_sym] = 1
            end
        end
    end    
    def total_value_in_stock    
      return @total
    end
    def number_of_each_isbn
        return @hash
    end
end