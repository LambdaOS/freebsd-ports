# Created by: wenheping@gmail.com
# $FreeBSD$

PORTNAME=	geotypes
PORTVERSION=	0.7.0
PORTREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	https://github.com/hippysurfer/geotypes/archive/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
DISTNAME=	${PORTVERSION}

MAINTAINER=	robak@FreeBSD.org
COMMENT=	Python Interface to Support PostGIS

LICENSE=	LGPL21

USES=			python zip
USE_PYTHON=		distutils
PYTHON_PKGNAMEPREFIX=	yes
PYDISTUTILS_EGGINFO=	GeoTypes-0.7.0-py${PYTHON_VER}.egg-info
WRKSRC=			${WRKDIR}/${PORTNAME}-${PORTVERSION}

.include <bsd.port.mk>
