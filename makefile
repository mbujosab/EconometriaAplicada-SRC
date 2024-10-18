OUT_DIR=./
# Using GNU Make-specific functions here
FILES=$(patsubst Lecc%.org,$(OUT_DIR)/Lecc%.tex,$(wildcard *.org))
PDF-FILES=$(patsubst Lecc%.tex,$(OUT_DIR)/Lecc%.pdf,$(wildcard *.tex))

#.PHONY: all clean install-doc
.PHONY: all install-doc

Lecc01.pdf: %.tex
	latexmk -c $@ 

all: install-doc

#install-doc: $(FILES)  $(PDF-FILES)
install-doc: $(PDF-FILES)

$(OUT_DIR):
	mkdir -v -p $(OUT_DIR)

#%.tex: %.org
#	emacs -q -l ~/Software/scimax/init.el $< --batch -f org-latex-export-to-latex --kill

%.pdf: %.tex
	latexmk -pdf --shell-escape -interaction=batchmode $< 
	latexmk -c

pedeefes: %.pdf

#$(OUT_DIR)/%.tex: %.tex
#	install -v -m 644 -t $(OUT_DIR) $<
#	rm $<
$(OUT_DIR)/%.pdf: %.pdf
	install -v -m 644 -t ./notas $<

#clean:
#	rm *.tex
