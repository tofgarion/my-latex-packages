TEXHASH = texhash
PDFLATEX = pdflatex
BIBTEX = bibtex
LOCAL_TEXMF := $(shell kpsewhich -var-value=TEXMFHOME)

install:	init
	@echo "call texhash."
	@echo "*** WARNING ***"
	@echo "It is normal not to have write permission to some directories"
	$(TEXHASH)

init: 	$(LOCAL_TEXMF)/tex/latex/my-latex-packages
	@echo "copying files"
	cp *.sty $(LOCAL_TEXMF)/tex/latex/my-latex-packages

$(LOCAL_TEXMF)/tex/latex/my-latex-packages:	
	@echo "creating $(LOCAL_TEXMF)/tex/latex/my-latex-packages"
	mkdir -p $(LOCAL_TEXMF)/tex/latex/my-latex-packages

