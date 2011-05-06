# $FreeBSD: src/usr.bin/ministat/Makefile,v 1.8 2008/10/16 20:39:02 phk Exp $
PROG=	ministat
DPADD=	${LIBM}
LDADD=	-lm

test:	${PROG}
	./${PROG} < ${.CURDIR}/chameleon 
	./${PROG} ${.CURDIR}/chameleon 
	./${PROG} ${.CURDIR}/iguana ${.CURDIR}/chameleon
	./${PROG} -c 80 ${.CURDIR}/iguana ${.CURDIR}/chameleon
	./${PROG} -s -c 80 ${.CURDIR}/chameleon ${.CURDIR}/iguana
	./${PROG} -s -c 80 ${.CURDIR}/chameleon ${.CURDIR}/iguana ${.CURDIR}/iguana

.include <bsd.prog.mk>
