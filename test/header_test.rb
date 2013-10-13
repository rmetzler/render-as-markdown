require 'minitest_helper'

module RenderAsMarkdown
  class TableTest < MiniTest::Unit::TestCase

    def test_h1
      h1 = RenderAsMarkdown::H1.new 'header 1'
      assert_equal h1.to_s, <<-eos
header 1
========

eos
    end

    def test_h2
      h2 = RenderAsMarkdown::H2.new 'header 2'
      assert_equal h2.to_s, <<-eos
header 2
--------

eos
    end


    def test_strip_spaces
      # we have to make sure, not to underline spaces
      h1 = RenderAsMarkdown::H1.new '      <!-- spaces -->       '
      assert_equal h1.render, <<-eos
<!-- spaces -->
===============

eos

    end
  end
end
