require "minitest/autorun"

require "minitest/reporters"
Minitest::Reporters.use!

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require_relative '../lib/render-as-markdown'
