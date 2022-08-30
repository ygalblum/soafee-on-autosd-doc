OUTPUT_DIR=out
DOC_NAME=index
HTML_TARGETS=${OUTPUT_DIR}/${DOC_NAME}.html
PDF_TARGETS=${OUTPUT_DIR}/${DOC_NAME}.pdf

TARGETS= ${HTML_TARGETS} ${PDF_TARGETS}

.PHONY: all
all: ${TARGETS}

.PHONY: html
html: ${HTML_TARGETS}

.PHONY: pdf
pdf: ${PDF_TARGETS}

${OUTPUT_DIR}/%.html: %.adoc
	mkdir -p ${OUTPUT_DIR}
	asciidoctor -D ${OUTPUT_DIR} $<

${OUTPUT_DIR}/%.pdf: %.adoc
	mkdir -p ${OUTPUT_DIR}
	asciidoctor-pdf -D ${OUTPUT_DIR} $<

clean:
	rm -rf ${OUTPUT_DIR}
