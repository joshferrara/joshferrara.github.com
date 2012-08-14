VERSION=2.0.0
DATE=$(shell DATE)
STYLE = ./style.css
STYLE_LESS = ./style.less
LESS_COMPESSOR ?= `which lessc`
WATCHR ?= `which watchr`

build:
	@@if test ! -z ${LESS_COMPESSOR}; then \
		sed -e 's/@VERSION/'"v${VERSION}"'/' -e 's/@DATE/'"${DATE}"'/' <${STYLE_LESS} >${STYLE_LESS}.tmp; \
		lessc ${STYLE_LESS}.tmp > ${STYLE}; \
		rm -f ${STYLE_LESS}.tmp; \
		echo "Built that shit! - `date`"; \
	else \
		echo "You must have the LESS compiler installed in order to build Preboot."; \
		echo "You can install it by running: npm install less -g"; \
	fi

watch:
	@@if test ! -z ${WATCHR}; then \
	  echo "Watching less files..."; \
	  watchr -e "watch('.*\.less') { system 'make' }"; \
	else \
		echo "You must have the watchr installed in order to watch Bootstrap less files."; \
		echo "You can install it by running: gem install watchr"; \
	fi

.PHONY: build watch