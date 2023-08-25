SOURCE  = $(wildcard src/*.adoc)
PROJECT = riscv-isadoc
DOC = $(PROJECT).html $(PROJECT).pdf

all: $(DOC)

$(PROJECT).html: $(SOURCE)
	cd source/ && \
	asciidoctor \
		-a stylesheet=readthedocs.css \
		-r asciidoctor-diagram \
		index.adoc \
		-o ../docs/index.html

$(PROJECT).pdf: $(SOURCE)
	asciidoctor-pdf -r asciidoctor-diagram -a compress source/index.adoc -o $@

clean:
	rm -rf $(DOC)
