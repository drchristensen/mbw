CFLAGS=-O3 -Wall -g -mcpu=power9
NAME=mbw
TARFILE=${NAME}.tar.gz

mbw: mbw.c

clean:
	rm -f mbw
	rm -f ${NAME}.tar.gz

${TARFILE}: clean
	 tar cCzf .. ${NAME}.tar.gz --exclude-vcs ${NAME} || true

rpm: ${TARFILE}
	 rpmbuild -ta ${NAME}.tar.gz 
