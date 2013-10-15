require 'minitest_helper'

module RenderAsMarkdown
  class ListTest < MiniTest::Unit::TestCase

    def test_simple_list
      l = RenderAsMarkdown::List.new ['first entry', 'second entry']
      l << 'third entry'

      assert_equal l.render, \
        "- first entry\n"+
        "- second entry\n"+
        "- third entry\n"
    end

  end
end
