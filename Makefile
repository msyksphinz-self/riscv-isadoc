# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = python3 -msphinx
SPHINXPROJ    = riscv-isa-pages
SOURCEDIR     = source
BUILDDIR      = docs

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile all

# # Catch-all target: route all unknown targets to Sphinx using the new
# # "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
# %: Makefile
# 	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

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
