# Created by: Shen Chuan-Hsing <statue@freebsd.sinica.edu.tw>
# $FreeBSD$

PORTNAME=	wenju
PORTVERSION=	1.6
PORTREVISION=	2
CATEGORIES=	chinese
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Collection of writing tools in Chinese

USES=		libtool pkgconfig
GNU_CONFIGURE=	yes
USE_GNOME=	gtk20
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	NLS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS=	--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
