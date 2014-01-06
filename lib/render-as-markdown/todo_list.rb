# todo_list.rb

module RenderAsMarkdown
  class TodoList < List

    def initialize list_items
      super( list_items )
    end

    # TODO: make a todo list item something to hold state,
    # so it can be `done` and render it like `- [x] this is done`
    def render
      md = ''

      @list_items.each do |item|
        md << "- [ ] #{item.to_s}\n"
      end

      md
    end

    alias_method :to_s, :render

  end

end
