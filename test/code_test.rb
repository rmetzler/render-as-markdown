require 'minitest_helper'

module RenderAsMarkdown
  class CodeTest < MiniTest::Unit::TestCase

    def test_simple_list
      l = RenderAsMarkdown::Code.new <<-eos
a
b
c
d
eos
      assert_equal l.render, \
        "    a\n"+
        "    b\n"+
        "    c\n"+
        "    d\n"
    end

  end
end
