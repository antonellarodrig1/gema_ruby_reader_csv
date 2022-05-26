require_relative 'lib/ruby_reader_csv/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_reader_csv"
  spec.version       = RubyReaderCsv::VERSION
  spec.authors       = ["antonellarodrig1"]
  spec.email         = ["antonella.sara.r@gmil.com"]

  spec.summary       = "Procesa un csv que contiene entre sus columnas ISBN y precio, 
  permite la obtencion del valor total de los libros en stock y la cantidd de cada libro en stock"
  spec.description   = "la gema csv_read_er permite procesar un archivo csv de gran tamaño
  El metodo read_in_csv_data(csv_file_name)procesa un archivo csv
  El metodo  total_value_in_stock permite saber el valor total de los libros en stock 
  El metodo  number_of_each_isbn devuelve un hash con el ISBN como clave y como valor la 
  cantidad de veces que se poroceso ese ISBN "
  spec.homepage      = "http://github.com/antonellarodrig1/ruby_reader_csv"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://rubygems.org/gems/ruby_reader_csv" 
 
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 3.2"
end
