PROJECT=report
OUTPUT=output
TEX=pdflatex
BB=bibtex
FLAGS=-output-directory ${OUTPUT}

default:
	mkdir -p ${OUTPUT}
	${TEX} ${FLAGS} ${PROJECT}

full: default
	${BB} ${OUTPUT}/${PROJECT}
	${TEX} ${FLAGS} ${PROJECT}
	${TEX} ${FLAGS} ${PROJECT}

clean:
	rm -rf ${OUTPUT}
