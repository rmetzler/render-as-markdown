RenderAsMarkdown
================


RenderAsMarkdown is a small Ruby gem featuring simple to use classes to turn
data into Markdown.

[![Gem Version](https://badge.fury.io/rb/render-as-markdown.png)](http://badge.fury.io/rb/render-as-markdown)
[![Build Status](https://travis-ci.org/rmetzler/render-as-markdown.png?branch=master)](https://travis-ci.org/rmetzler/render-as-markdown)
[![Code Climate](https://codeclimate.com/github/rmetzler/render-as-markdown.png)](https://codeclimate.com/github/rmetzler/render-as-markdown)
[![Dependency Status](https://gemnasium.com/rmetzler/render-as-markdown.png)](https://gemnasium.com/rmetzler/render-as-markdown)

This project started when [rmetzler](//github.com/rmetzler) tried to render
data into a Markdown table. While this was easy to achive with templating, a
dedicated helper gem was more reuseable and produced output that was also
easier to scan in ASCII.

Ultimately this helper should turn into something like a DSL to create and
scaffold Markdown documents. In particular it should be very useful to create
project documentation files like README.md, TODO.md, LICENSE.md, etc. with it.
Github is able to render Markdown as HTML so automatically generated project
documentation could be displayed on http://github.com

See [Implementation](#implementation) for what's implemented yet.


What is Markdown?
-----------------

Markdown is a (supposed to be) simple markup language that can be written and
converted into HTML easily.

It was [created by John Gruber in December 2004](http://daringfireball.net/projects/markdown/)
and has grown in popularity since. Developers started to adapt Markdown and
several different Markdown dialects emerged:

- [Original Markdown Syntax](http://daringfireball.net/projects/markdown/syntax)
- [Github created Github flavored Markdown](http://github.github.com/github-flavored-markdown/)
- [MultiMarkdown adds features for multiple files](http://fletcherpenney.net/multimarkdown/)
- [iA Writer uses a slightly different dialect](http://support.iawriter.com/help/kb/general-questions/markdown-syntax-reference-guide)


Implementation
--------------

### Headers

Headers in Markdown can be written in two different notations. the #-Notation
where you just prepend # for H1, ## for H2, ### for H3 ... up to H5.
You get the concept.

And there is the underline Notation for H1 (===) and H2 (---). This notation
is easier to scan in ASCII files, but its not as simple to implement in
Markdown templates as the #-notation is. So I wrote two little helpers classes.


### Link

Links in Markdown have a URL, text (optional) and hint (optional).

### Image

Images in Markdown have a URL, an alt text and a hint (optional).


### List

Lists in Markdown start with a dash and a space in every line.


### Code

There are different notations for Code in Markdown.
Currently the implementation just indent every line by 4 spaces.


### Table

It's really easy to render a table in (GHf)MD, but the simplest approach
doesn't look that nice in raw mode. That's why there is this simple class,
tables work in the terminal AND on Github.

```Ruby
    t = RenderMarkdown::Table.new %w{eins zwei superkalifrageristric}
    t << %w{hoch-soll-er-leben 3 mal-hoch}
    puts t.render
```

renders the following table

```
    eins              |zwei|superkalifrageristric
    ------------------|----|---------------------
    hoch-soll-er-leben|3   |mal-hoch
```

Thanks to Github, this is also rendered in HTML. Nice!

eins              |zwei|superkalifrageristric
------------------|----|---------------------
hoch-soll-er-leben|3   |mal-hoch
