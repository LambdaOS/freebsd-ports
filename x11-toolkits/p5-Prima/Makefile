# Created by: dmitry@karasik.eu.org
# $FreeBSD$

PORTNAME=	Prima
PORTVERSION=	1.41
PORTREVISION=	2
CATEGORIES=	x11-toolkits graphics perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Extensible Perl toolkit for multi-platform GUI development

LICENSE=	BSD2CLAUSE

LIB_DEPENDS=	libgif.so:${PORTSDIR}/graphics/giflib \
		libjpeg.so:${PORTSDIR}/graphics/jpeg \
		libpng.so:${PORTSDIR}/graphics/png \
		libtiff.so:${PORTSDIR}/graphics/tiff

OPTIONS_DEFINE=	GTK2 ICONV XFT
OPTIONS_DEFAULT=ICONV XFT

CONFIGURE_ARGS=	EXTRA_CCFLAGS="${CFLAGS}" EXTRA_LDFLAGS="${LDFLAGS}" \
		X11BASE=${LOCALBASE}
USES=		perl5
USE_PERL5=	configure
USE_XORG=	x11 xext xpm xrender
MAKE_JOBS_UNSAFE=	yes

GTK2_CONFIGURE_OFF=	WITH_GTK2=0
GTK2_CONFIGURE_ON=	WITH_GTK2=1
GTK2_USE=		GNOME=gtk20
ICONV_CONFIGURE_OFF=	WITH_ICONV=0
ICONV_CONFIGURE_ON=	WITH_ICONV=1
ICONV_USES=		iconv
XFT_CONFIGURE_OFF=	WITH_XFT=0
XFT_CONFIGURE_ON=	WITH_XFT=1
XFT_USE=		XORG=xft

post-install:
	${CHMOD} u+w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Prima/Prima.so
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Prima/Prima.so
	${CHMOD} u-w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Prima/Prima.so

.include <bsd.port.mk>
