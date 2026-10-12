.PHONY: install build artifacts test clean

install:
	uv sync

build:
	uv run k2sqlite build --input data/kanjidic2.xml --db output/kanjidic2.sqlite

artifacts: build
	uv run k2sqlite artifacts --db output/kanjidic2.sqlite --output-dir output

test:
	uv run pytest

clean:
	rm -rf output/*.sqlite output/*.json
