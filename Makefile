.PHONY: clean

all: \
	dist \
	dist/normalize.css

dist:
	mkdir $@

dist/normalize.css:
	cp node_modules/normalize.css/normalize.css $@

clean:
	rm -rf dist
