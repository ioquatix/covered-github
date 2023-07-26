# frozen_string_literal: true

require_relative "lib/covered/github/version"

Gem::Specification.new do |spec|
	spec.name = "covered-gihub"
	spec.version = Covered::GitHub::VERSION
	
	spec.summary = "Provides coverage computation for git pull requests."
	spec.authors = ["Samuel Williams", "Michael Adams"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/ioquatix/covered-git"
	
	spec.metadata = {
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
		"homepage_uri" => "https://github.com/ioquatix/covered-git",
	}
	
	spec.files = Dir.glob(['{bake,lib}/**/*', '*.md'], File::FNM_DOTMATCH, base: __dir__)
	
	spec.required_ruby_version = ">= 3.0"
	
	spec.add_dependency "bake"
	spec.add_dependency "covered", "~> 0.24"
	spec.add_dependency "rugged", "~> 1.6"
end
