.PHONY: install build artifacts test quiz clean

install:
	uv sync

build:
	uv run k2sqlite build --input data/kanjidic2.xml --db output/kanjidic2.sqlite

quiz:
	uv run --package oboeru oboeru

artifacts: build
	uv run k2sqlite artifacts --db output/kanjidic2.sqlite --output-dir output

test:
	uv run pytest

clean:
	rm -f output/kanjidic2.sqlite* output/manifest.json
