# emojicite

[CTAN]

Scientific publications are too dry. Too much math, too little emotions. Science
needs emojis!
Leave a small heart to value the hard work gone into a paper (Smith, 2014 ❤️ ).
Flag self-citations as in (Sixt et al., 2019 🤳)
Finally, you can express what you truly think directly as in (Wakefield et. al, 1998 🤦).
We could also indicate, how thoroughly we read papers (Van Wesel et al., 2014 🙈)

## Basic Usage

```
\documentclass{article}

\usepackage{emojicite}
\setcitestyle{authoryear, round}
\bibliographystyle{plainnat}

\begin{document}

\emojicitep{einstein, kissing-heart}

\bibliography{bibliography}
\end{document}
```

See [example.tex](./example.tex) for basic usage.

## Examples

Table 1: How did you liked the cited work?

| Citation                       |      Emoji     |  Description         |
|--------------------------------|:--------------:|:---------------------|
| (Einstein, 1905 😘)            | kissing-heart  | I like this work. Here is a kiss.
| (Shannon, 1948 🙇)             | bow            | Wow, I can only bow to this work.
| (Kim et al., 2017 👍)          | +1             | Good work!
| (Zhang and Cheok, 2016 😕 )    | confused       | I am confused by this work.
| (Le Cun et al., 1989 🥱)       | yawning-face   | Boring work.
| (Tishby and Zaslavsky, 2015 🤨)| raised-eyebrow | I have some serious questions...
| (Wakefield et al., 1998 🤦)    | facepalm       | omg, this work sucks!


Table 2: How thoroughly have you read the work?

| Citation                       |      Emoji     |  Description         |
|--------------------------------|:--------------:|:---------------------|
| (Kingma and Welling, 2013 🤓)  | nerd-face      | I know everything about this work.
| (Kim et al., 2017 🎓)          | graduation-cap | I know this work well.
| (Shannon, 1948 🤔)             | thinking       | I read it but I still have questions.
| (Jones, 1972 🙈)               | see-no-evil    | Ups, I did not read this work in-depth.
| (Einstein, 1905 🤷)            | shrug          | too long; did not read

See ()[] for more examples.

## Requirements

The package works with the Tex Live 2020 distributon and you need to use lualatex.
If you use the `latexmk` tool, simple use `latexmk -pdflua`.
See the [emoji](https://github.com/stone-zeng/latex-emoji) package for are in detail description on the requirements.
