# $FreeBSD$

PORTNAME=	downloads
PORTVERSION=	${TRAC_VERSION}.${PLUGIN_VERSION}.${SVN_REV}
PORTREVISION=	2
CATEGORIES=	www devel python
MASTER_SITES=	${MASTER_SITE_LOCAL}
MASTER_SITE_SUBDIR=	brooks
PKGNAMEPREFIX=	trac-
DISTNAME=	${PORTNAME}plugin-${PORTVERSION}
DIST_SUBDIR=	trac

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Trac plugin providing a downloads section

RUN_DEPENDS+=	tracd:${PORTSDIR}/www/trac

TRAC_VERSION=	0.12
PLUGIN_VERSION=	0.3
SVN_REV=	10047

USES=		python:2
USE_PYTHON=	distutils autoplist

.if defined(BOOTSTRAP)
do-fetch:
	${MKDIR} ${WRKDIR}
	svn export -r ${SVN_REV} http://trac-hacks.org/svn/downloadsplugin/${TRAC_VERSION}/ ${WRKSRC}
	${MKDIR} ${_DISTDIR}
	cd ${WRKDIR} && \
	    tar cfvz ${_DISTDIR}/${DISTNAME}.tar.gz ${DISTNAME}
.endif

.include "${.CURDIR}/../../www/trac/plugin.mk"
.include <bsd.port.mk>
