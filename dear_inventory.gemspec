# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dear_inventory/version"

Gem::Specification.new do |spec|
  spec.name = "dear_inventory"
  spec.version = DearInventory::VERSION
  spec.authors = ["Adam Rice"]
  spec.email = ["development@hashnotadam.com"]

  spec.summary = "Library for connecting to the DEAR Inventory API"
  spec.description = "Works with V2 of the DEAR Systems / DEAR Inventory " \
                     "API as seen at https://dearinventory.docs.apiary.io/"
  spec.homepage = "https://morningcoffee.com.au"
  spec.license = "MIT"

  spec.required_ruby_version = ">= 3.4.0"
  spec.required_rubygems_version = ">= 3.6.0"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.
      split("\x0").
      reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "http", ">= 5.0", "< 6.0"
  spec.add_dependency "logger"

  spec.metadata["rubygems_mfa_required"] = "true"
end
