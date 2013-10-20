module RenderAsMarkdown
  class Link

    # TODO: look up Github in-document link reference and implement it (e.g. "[A Header](#a-header)" )

    attr_accessor :url, :text, :hint

    def initialize url, text=nil, hint=nil
      @url, @text, @hint = url.to_s, text.to_s, hint.to_s
    end

    def render
      text = @text.empty? ? @url : @text
      hint = " \"#{@hint}\"" unless @hint.empty?
      "[#{text}](#{@url}#{hint})"
    end

    alias_method :to_s, :render

  end
end
