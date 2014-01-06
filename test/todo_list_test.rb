require 'minitest_helper'

module RenderAsMarkdown
  class TodoListTest < MiniTest::Unit::TestCase

    def test_todo_list
      l = RenderAsMarkdown::TodoList.new ['first entry', 'second entry']
      l << 'third entry'

      assert_equal l.render, \
        "- [ ] first entry\n"+
        "- [ ] second entry\n"+
        "- [ ] third entry\n"
    end

  end
end
