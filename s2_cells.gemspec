# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "s2_cells/version"

Gem::Specification.new do |spec|
  spec.name          = "s2_cells"
  spec.version       = S2Cells::VERSION
  spec.authors       = ["Ronie Uliana"]
  spec.email         = ["ronie.uliana@gmail.com"]

  spec.summary       = %q{Lat Long to Google S2 Cells}
  spec.description   = %q{Converts latitude and longitude to Google S2 Cells. Useful for geo stuff. A better description of S2 cells can be found here: http://blog.christianperone.com/2015/08/googles-s2-geometry-on-the-sphere-cells-and-hilbert-curve/}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "guard-minitest", "~> 2.4"
  spec.add_development_dependency "rubocop", "~> 0.48"
  spec.add_development_dependency "guard-rubocop", "~> 1.2"
end
