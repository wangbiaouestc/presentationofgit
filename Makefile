
SRCS=$(wildcard *.tex)
INTERMEDIATE=$(foreach ext,log aux nav out snm toc vrb,$(SRCS:.tex=.$(ext)))
TARGETS=$(filter-out beamertest-content.pdf,$(SRCS:.tex=.pdf))

.PHONY=all
all: $(TARGETS)

$(TARGETS): %.pdf: %.tex $(wildcard beamer*themeBerlinTU.sty)
	TEXINPUTS=..:${TEXINPUTS} pdflatex $<
	TEXINPUTS=..:${TEXINPUTS} pdflatex $<

.PHONY=clean
clean:
ifneq ($(wildcard $(INTERMEDIATE) $(TARGETS)),)
	-rm -f $(wildcard $(INTERMEDIATE) $(TARGETS))
endif

