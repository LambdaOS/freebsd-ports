# Created by: Thomas Gellekum <tg@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gnumail
PORTVERSION=	1.2.0
PORTREVISION=	6
CATEGORIES=	mail gnustep
MASTER_SITES=	http://download.gna.org/gnustep-nonfsf/
DISTNAME=	GNUMail-${PORTVERSION}

MAINTAINER=	theraven@FreeBSD.org
COMMENT=	GNUstep mail client

LICENSE=	GPLv2

USES+=	cpe
CPE_VENDOR=	gnu

USES=		gnustep
USE_GNUSTEP=	back build
LIB_DEPENDS=	libPantomime.so:${PORTSDIR}/mail/pantomime \
		libAddresses.so:${PORTSDIR}/mail/addresses
USE_LDCONFIG=	${GNUSTEP_LOCAL_LIBRARIES}

MAKE_ENV+=	GNUSTEP_INSTALLATION_DIR=${GNUSTEP_LOCAL_ROOT}

.include <bsd.port.mk>
