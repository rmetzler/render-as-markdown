module RenderAsMarkdown
  class Code

    # TODO: render language for code block if provided as Symbol
    # TODO: add file support

    attr_accessor :code

    def initialize code
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
