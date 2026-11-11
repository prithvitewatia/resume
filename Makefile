SRC   := docs/prithvi_resume.rst
STYLE := docs/resume.yaml
OUT   := resume.pdf

.PHONY: pdf clean check

pdf: $(OUT)

$(OUT): $(SRC) $(STYLE)
	rst2pdf $(SRC) -o $(OUT) -s $(STYLE)

# Prints the text an ATS would extract (needs poppler: brew install poppler)
check: $(OUT)
	pdftotext -layout $(OUT) - | head -60
	pdfinfo $(OUT) | grep Pages

clean:
	rm -f $(OUT)
