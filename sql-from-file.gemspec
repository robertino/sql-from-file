# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sql-from-file'

Gem::Specification.new do |gem|
  gem.name          = "sql-from-file"
  gem.version       = SQLFromFile::VERSION
  gem.authors       = ["Robert Borkowski"]
  gem.email         = ["robert.borkowski@forward3d.com"]
  gem.description   = %q{Simply load SQL from files}
  gem.summary       = %q{Allows loading SQL from exernal file if you need to}
  gem.homepage      = "https://github.com/robertino/sql-from-file"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = [] #gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = [] #gem.files.grep(%r{^(test|spec|features)/})
  # gem.test_files    = `git grep test`.split(/\n/).map {|f| File.basename(f.split(':').first)}
  gem.require_paths = ["lib"]

  gem.license = 'MIT'

end

