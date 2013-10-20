module RenderAsMarkdown
  class Image

    attr_accessor :alt_text, :url, :title

    def initialize alt_text, url, title=nil
      @alt_text, @url, @title = alt_text.to_s, url.to_s, title.to_s
    end

    def render
      title = " \"#{@title}\"" unless @title.empty?
      "![#{@alt_text}](#{@url}#{title})"
    end

    alias_method :to_s, :render

  end
end
