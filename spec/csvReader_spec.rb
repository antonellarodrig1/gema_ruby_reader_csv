require '/home/anto/Escritorio/tpRuby/ruby_reader_csv/lib/ruby_reader_csv.rb'
#require_relative 'CsvReader'
f = '/home/anto/Escritorio/tpRuby/ruby_reader_csv/spec/csv_file_test.csv'


describe CsvReader do
  it '#es instancia de' do
    f = '/home/anto/Escritorio/tpRuby/ruby_reader_csv/spec/csv_file_test.csv'
    reader = CsvReader.new 
    expect(reader).to be_an_instance_of(CsvReader)
  end

  it '#total_value_in_stock' do 
    reader = CsvReader.new 
    readre = reader.read_in_csv_data(f)
    expect(reader.total_value_in_stock).to eq(300.0)
  end

  it '#cnumber_of_each_isbn' do 
    reader = CsvReader.new 
    readre = reader.read_in_csv_data(f)
    hash = reader.number_of_each_isbn
    expect(hash[:"111"]).to eq(2)
  end
end
=begin


readre = reader.read_in_csv_data(f)
    
describe RubyReaderCsv::CsvReader  do
    it 'es instancia de' do
        expect(RubyReaderCsv::CsvReader.class.to be_an_instance_of(CsvReader))
    end

  #  describe 'total_value_in_stock' do
   #     it 'total en stock es 300' do
  #          expect(reader.total_value_in_stock).to eq(300.0)
  #      end
 #   end 
end
=end