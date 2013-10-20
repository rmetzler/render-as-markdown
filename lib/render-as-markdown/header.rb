module RenderAsMarkdown
  class Header

    def initialize title, char
      @title = [title.to_s.strip, " "].max
      @char  = char.to_s
    end

    def render
      length = [@title.length, 1].max
      @title << "\n" << @char*length << "\n"*2
    end

    alias_method :to_s, :render
  end

  class H1 < Header

    def initialize title
      super title, "="
    end

  end

  class H2 < Header

    def initialize title
      super title, "-"
    end

  end
end
