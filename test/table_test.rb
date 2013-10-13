require 'minitest_helper'

# I'm sorry, I concat Ruby strings
# the reason is: the table ends with spaces
# and whenever I hit cmd+s, a textmate plugin
# deletes all trailing spaces

module RenderAsMarkdown
  class TableTest < MiniTest::Unit::TestCase

    def test_simple_table
      t = RenderAsMarkdown::Table.new %w{eins zwei superkalifrageristric}
      t << %w{hoch-soll-er-leben 3 mal-hoch}

      assert_equal t.render, \
        "eins              |zwei|superkalifrageristric\n"+
        "------------------|----|---------------------\n"+
        "hoch-soll-er-leben|3   |mal-hoch             \n"

    end

    def test_header_with_numbers
      header = [1,2,3]
      t = RenderAsMarkdown::Table.new header
      t << [3,2,1]
      t << [4,5,6]

      assert_equal t.render, \
        "1|2|3\n"+
        "-|-|-\n"+
        "3|2|1\n"+
        "4|5|6\n"

    end

    def test_numbers
      header = [1,2,3]
      t = RenderAsMarkdown::Table.new header
      t << [3,2,1]
      t << [4,5,6]

      assert_equal t.render, \
        "1|2|3\n"+
        "-|-|-\n"+
        "3|2|1\n"+
        "4|5|6\n"

    end

    def test_nil
      header = [nil, "eins", "zwei"]
      t = RenderAsMarkdown::Table.new header
      t << [nil, 1, 2]

      assert_equal t.render, \
        " |eins|zwei\n"+
        "-|----|----\n"+
        " |1   |2   \n"
    end


    def test_single_column
      t = RenderAsMarkdown::Table.new "nr"
      t << 1
      t << 2
      t << 3
      t << 4

      assert_equal t.render,
        "nr\n"+
        "--\n"+
        "1 \n"+
        "2 \n"+
        "3 \n"+
        "4 \n"
    end


  end
end
