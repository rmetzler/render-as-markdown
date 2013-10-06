#RenderAsMarkdown

RenderAsMarkdown is a small Ruby gem featuring simple to use objects to turn data into Markdown.

Currently implemented is a table in GitHub-flavoured Markdown. It's not fully featured yet.

## Table

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
