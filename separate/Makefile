CC=riscv64-unknown-elf-gcc
AR=riscv64-unknown-elf-ar
CFLAGS=-march=rv32iafdc -mabi=ilp32
ARFLAGS=-rsc

SRCDIR=./src
BUILDDIR = ./build

all:
	make app

doc:
	pdflatex doc/report.tex

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.log
	rm -f *.out
	rm -f *.pdf
	rm -f *.toc
	rm -f *.a
	rm -f *.o

	rm -rf ${BUILDDIR}
lib: 
	mkdir -p build

	${CC} ${CFLAGS} ${SRCDIR}/libtrapz/libtrapz.c -o ${BUILDDIR}/libtrapz.o -c
	${AR} ${ARFLAGS} libtrapz.a ${BUILDDIR}/libtrapz.o

app: 
	make lib
	${CC} ${CFLAGS} ${SRCDIR}/app/main.c libtrapz.a -o trapz
    
    
