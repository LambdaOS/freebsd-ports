# Created by: Maxim Sobolev <sobomax@FreeBSD.org>
# $FreeBSD$

PORTNAME=	libiconv
PORTVERSION=	1.14
PORTREVISION=	8
CATEGORIES=	converters devel
MASTER_SITES=	GNU

MAINTAINER=	gnome@FreeBSD.org
COMMENT=	Character set conversion library

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-static \
		--disable-nls \
		--docdir=${DOCSDIR} \
		am_cv_func_iconv=no
INSTALL_TARGET=	install-strip
MAKE_JOBS_UNSAFE=	yes
USES=		libtool
USE_CSTD=	gnu89
USE_LDCONFIG=	yes

OPTIONS_DEFINE=	DOCS ENCODINGS PATCHES
OPTIONS_DEFAULT=ENCODINGS
ENCODINGS_DESC=	Include extra character sets
PATCHES_DESC=	Apply patches to fix CP932, add EUCJP-MS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MENCODINGS}
CONFIGURE_ARGS+=	--enable-extra-encodings
.endif

.if ${PORT_OPTIONS:MPATCHES}
PATCH_SITES+=	http://apolloron.org/software/libiconv-1.14-ja/
PATCH_SITES+=	${MASTER_SITE_LOCAL}
PATCH_SITE_SUBDIR+=	kwm
PATCHFILES+=	${DISTNAME}-ja-1.patch.gz
PATCH_DIST_STRIP+=	-p1
.endif

post-patch:
	@${REINPLACE_CMD} -e 's:ei_ksc5601:ei_euc_kr:g' ${WRKSRC}/lib/aliases.h
	@${REINPLACE_CMD} -e 's:gawk:awk:g' ${WRKSRC}/configure \
		${WRKSRC}/libcharset/configure \
		${WRKSRC}/preload/configure

post-install:
	${LN} -s libiconv.so.2 ${STAGEDIR}${PREFIX}/lib/libiconv.so.3

.include <bsd.port.mk>
