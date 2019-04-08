# features/support/env.rb

lib = File.expand_path("../../../", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "require_all"
require "yaml"
require "fig_newton"
require "data_magic"
require "watir"
require "page-object"

# This allows us to call the factory methods in our step-definitions.
World(PageObject::PageFactory)

# This allows us to call the `data_for(:example_key)` method so we can grab specific data.
World(DataMagic)
