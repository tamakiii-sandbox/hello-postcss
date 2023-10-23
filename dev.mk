.PHONY: build

build: \
	dist/normalize.css \
	dist/main.css

dist/normalize.css:
	make -f Makefile $@

dist/main.css: src/main.pcss postcss.config.js
	npx --no-install nodemon $(foreach f,$^,--watch $f) --exec "npx --no-install postcss --watch src/main.pcss -o $@"
