require_relative 'lib/super_funny/version'

Gem::Specification.new do |spec|
  spec.name          = "super_funny"
  spec.version       = SuperFunny::VERSION
  spec.authors       = ["“Megan"]
  spec.email         = ["meganschertz@gmail.com"]

  spec.summary       = %q{Super Funny is a joke CLI using https://sv443.net/jokeapi/v2/}
  spec.description   = %q{Super Funny prints jokes in to your terminal depending on the category of your choice.}
  spec.homepage      = "https://github.com/mmschertz/super_funny"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "rest-client"
  spec.add__delevopment_dependency 'json'
  
end

