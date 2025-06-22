SOURCE  = $(wildcard src/*.adoc)
PROJECT = riscv-isadoc
DOC = $(PROJECT).html $(PROJECT).pdf

all: $(DOC)

$(PROJECT).html: $(SOURCE)
	asciidoctor \
		-a stylesheet=readthedocs.css \
		-r asciidoctor-diagram \
		-a imagesdir=images \
		-a imagesoutdir=docs/images \
		-D docs \
		source/index.adoc

$(PROJECT).pdf: $(SOURCE)
	asciidoctor-pdf -r asciidoctor-diagram -a compress source/index.adoc -o $@

clean:
	rm -rf $(DOC)
