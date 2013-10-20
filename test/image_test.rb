require 'minitest_helper'

module RenderAsMarkdown
  class ImageTest < MiniTest::Unit::TestCase

    def test_image
      l = RenderAsMarkdown::Image.new "Alt Text", "http://whatismarkdown.com/workspace/img/logo.gif"
      assert_equal "![Alt Text](http://whatismarkdown.com/workspace/img/logo.gif)", l.to_s
    end

    def test_image_with_title
      l = RenderAsMarkdown::Image.new "Alt Text", "http://whatismarkdown.com/workspace/img/logo.gif", "Markdown Logo"
      assert_equal "![Alt Text](http://whatismarkdown.com/workspace/img/logo.gif \"Markdown Logo\")", l.to_s
    end

  end
end



