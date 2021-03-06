# Created by: Sylvio Cesar Teixeira <sylvio@FreeBSD.org>
# $FreeBSD$

PORTNAME=	Goo-Canvas
PORTVERSION=	0.06
PORTREVISION=	7
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl interface to the GooCanvas

LICENSE=	GPLv2

BUILD_DEPENDS=	p5-Cairo>=0:${PORTSDIR}/graphics/p5-Cairo \
		p5-ExtUtils-Depends>=0:${PORTSDIR}/devel/p5-ExtUtils-Depends \
		p5-ExtUtils-PkgConfig>=1:${PORTSDIR}/devel/p5-ExtUtils-PkgConfig \
		p5-Glib2>=0:${PORTSDIR}/devel/p5-Glib2 \
		p5-Gtk2>=0:${PORTSDIR}/x11-toolkits/p5-Gtk2
LIB_DEPENDS=	libgoocanvas.so:${PORTSDIR}/graphics/goocanvas \
		libfreetype.so:${PORTSDIR}/print/freetype2 \
		libfontconfig.so:${PORTSDIR}/x11-fonts/fontconfig
RUN_DEPENDS=	p5-Cairo>=0:${PORTSDIR}/graphics/p5-Cairo \
		p5-Glib2>=0:${PORTSDIR}/devel/p5-Glib2 \
		p5-Gtk2>=0:${PORTSDIR}/x11-toolkits/p5-Gtk2

USE_GNOME=	pango gtk20
USE_PERL5=	configure
USE_XORG=	xrender
USES=		perl5

MAKE_JOBS_UNSAFE=	yes

post-install:
	${CHMOD} u+w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Goo/Canvas/Canvas.so
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Goo/Canvas/Canvas.so
	${CHMOD} u-w ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Goo/Canvas/Canvas.so

.include <bsd.port.mk>
