RenderAsMarkdown
================

RenderAsMarkdown is a small Ruby gem featuring simple to use objects to turn data into Markdown.

Currently implemented are underlined H1 and H2 and a table in GitHub-flavoured Markdown. It's not fully featured yet.

Headers
-------

Headers in Markdown can be written in two different notations. the #-Notation where you just prepend # for H1, ## for H2, ### for H3 ... up to H5. You get the concept.

And there is the underline Notation for H1 (===) and H2 (---). This notation is easier to scan in ASCII files, but its not as simple to implement in Markdown templates as the #-notation is. So I wrote two little helpers classes.


List
----

Lists in Markdown start with a dash and a space in every line.


Code
----

There are different notations for Code in Markdown. Currently the implementation just indent every line by 4 spaces.


Table
-----

It's really easy to render a table in (GHf)MD, but the simplest approach doesn't look that nice in raw mode. That's why there is this simple class, tables work in the terminal AND on Github.

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
