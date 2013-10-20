require 'minitest_helper'

module RenderAsMarkdown
  class ListTest < MiniTest::Unit::TestCase

    def test_link_url_only
      l = RenderAsMarkdown::Link.new "https://google.com/"
      assert_equal "[https://google.com/](https://google.com/)", l.to_s
    end

    def test_link_text_url
      l = RenderAsMarkdown::Link.new "https://google.com/", "google it"
      assert_equal "[google it](https://google.com/)", l.to_s
    end

    def test_link_text_url_hint
      l = RenderAsMarkdown::Link.new "https://google.com/", "google it", "Google Search"
      assert_equal '[google it](https://google.com/ "Google Search")', l.to_s
    end

  end
end
