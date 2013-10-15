module RenderAsMarkdown
  class Code

    attr_accessor :code

    def initialize code
      # list_items will be an array
      @code = code.to_s
    end

    def render
      md = ''
      @code.lines.each {|l| md << "    " << l }
      md
    end

    alias_method :to_s, :render

  end

end
