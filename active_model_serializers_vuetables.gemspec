
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_model_serializers_vuetables/version"

Gem::Specification.new do |spec|
  spec.name          = "active_model_serializers_vuetables"
  spec.version       = ActiveModelSerializersVuetables::VERSION
  spec.authors       = ["Erlend Finvåg"]
  spec.email         = ["erlend.finvag@gmail.com"]

  spec.summary       = %q{Vue Tables adapter for ActiveModel::Serializer}
  spec.homepage      = "https://github.com/erlend/active_model_serializers_vuetables"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "active_model_serializers", "~> 0.10.0"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "sqlite3"
end
