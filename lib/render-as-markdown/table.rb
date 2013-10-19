module RenderAsMarkdown
  class Table

    attr_accessor :columns, :rows

    def initialize column_titles
      # column_titles will be an array
      @columns = [*column_titles].map{|title| Column.new title}
      @rows = []
    end

    def add_row row
      # TODO: ensure element count of row is == element count of columns

      # make row an array
      row = [*row]

      # add row to rows, use an array
      @rows << row

      # iterate through columns and row, add each row to their column
      @columns.zip(row).each {|col, val| col.add_row val.to_s}
    end

    alias_method  '<<', :add_row


    def render
      render_head << render_seperator << render_body
    end

    alias_method :to_s, :render

    def render_head
      # join all column headers
      @columns.map(&:render_title).join( '|' ) << "\n"
    end

    def render_seperator
      # join all column lines
      @columns.map(&:render_line).join( '|' ) << "\n"
    end

    def render_body
      # join all columns for all rows
      body =''
      @rows.each_with_index do |row, i|
        body << render_row( i )
      end
      body
    end

    def render_row row
      @columns.map {|col| col.render_row row}.join( '|' ) << "\n"
    end

  end


  class Column

    attr_accessor :title, :width, :rows

    def initialize title
      @rows = []
      @title = title.to_s
      @width = [@title.length, 1].max
    end

    def render_title
      @title.ljust @width
    end

    def render_line
      '-'.ljust @width, '-'
    end

    def render_row row_number
      @rows[row_number].ljust @width
    end

    def add_row string
      string ||= ''
      @rows << string
      update_width string.to_s.length
    end

    def update_width length
      @width = length if @width < length
    end

  end

end
