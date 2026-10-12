# oboeru （覚える）

*Oboeru* is Japanese for "to memorize / learn by heart" — which is exactly what
this terminal kanji quiz helps you do. Fast, keyboard-driven, and just
addictive enough to keep you coming back.

Built with [textual](https://textual.textualize.io/) on
[KANJIDIC2](https://www.edrdg.org/wiki/index.php/KANJIDIC_Project) data.

## Features

- Rounds of 10 multiple-choice "kanji → meaning" questions per JLPT level (N5–N1)
- Big half-block kanji art (needs a system CJK font; falls back to plain text)
- Adaptive selection: unseen and previously missed kanji come back more often
  (Leitner boxes), mastered kanji fade away
- Sessions are saved: per-kanji progress + session history in a small SQLite
  file; the menu shows lifetime accuracy and mastered count
- Score with streak bonuses 🔥, animations, and a review list after each round

## Install

```bash
pip install oboeru
# or run directly without installing:
uvx oboeru --db /path/to/kanjidic2.sqlite
```

## You need a kanji database

oboeru reads a KANJIDIC2 SQLite database produced by
[k2sqlite](https://github.com/trygu/k2sqlite) — download
`kanjidic2.sqlite` from its
[releases page](https://github.com/trygu/k2sqlite/releases)
or build it in about a second.

## Run

```bash
oboeru --db /path/to/kanjidic2.sqlite
oboeru --help        # all options (--kanji-size, --progress)
```

Keys: `1-4` or `↑/↓` + `enter` answer, `enter` next question, `q` back/quit.

Progress is stored next to the database (`quiz_progress.sqlite`) unless
`--progress` says otherwise — your streaks survive restarts.

## License

MIT
