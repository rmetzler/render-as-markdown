require "minitest/autorun"

require "minitest/reporters"
Minitest::Reporters.use!

require 'json'
require 'coveralls'
Coveralls.wear!


require_relative '../lib/render-as-markdown'
