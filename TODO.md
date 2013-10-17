TODO
====

- create TOC (table of contents) structur (see github anchor links)
- create link references
- create document from hash (Document)
- create DSL methods like table(titles) instead of Table.new
- Readme: better examples
- create example folder
- include files (code, multimarkdown, version number, etc)
- show typical Github project signs of life like travis build image, code climate, versioneye
- auto-numbering of headers (h2, h3, h4) so TOC works with numbers (Document walker)


Ideas for DSL
-------------

"<url>".link => create link
"<url>".img => create image
"<url>".ref => create reference

"markdown".tag => create Tag #markdown


DSL.markdown do |md|
  md.h1 "This is a title"
  md.chapter "title for chapter 1" do |c1|
    c1.paragraph "paragraph1"
    c1.img "http://...jpeg"
    c1.list ["item 1", "item2", "item3"]
    c1.table #...
    c1.ref text, "<url>"
  end
end # => renders title, toc, references etc
