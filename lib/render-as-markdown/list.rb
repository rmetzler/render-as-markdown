module RenderAsMarkdown
  class List

    attr_accessor :list_items

    def initialize list_items
      # list_items will be an array
      @list_items = [*list_items]
    end

    def add_list_item list_item
      # concat arrays
      list_items.concat [*list_item]
    end

    alias_method  '<<', :add_list_item
    alias_method  :add_item, :add_list_item

    def render
      md = ''

      @list_items.each do |item|
        md << "- #{item.to_s}\n"
      end

      md
    end

    alias_method :to_s, :render

  end

end
