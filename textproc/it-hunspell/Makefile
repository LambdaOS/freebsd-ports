# $FreeBSD$

PORTNAME=	hunspell
PORTVERSION=	2013.09.05
CATEGORIES=	textproc
MASTER_SITES=	http://sourceforge.net/projects/aoo-extensions/files/1204/13/
PKGNAMEPREFIX=	it-
DISTNAME=	dict-it
EXTRACT_SUFX=	.oxt
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	office@FreeBSD.org
COMMENT=	Italian hunspell dictionaries

LICENSE=	GPLv3

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	%%DATADIR%%/it_IT.aff \
		%%DATADIR%%/it_IT.dic

do-install:
	${MKDIR} ${STAGEDIR}${DATADIR}/
	${INSTALL_DATA} ${WRKSRC}/dictionaries/it_IT.aff \
		${WRKSRC}/dictionaries/it_IT.dic ${STAGEDIR}${DATADIR}/

.include <bsd.port.mk>
