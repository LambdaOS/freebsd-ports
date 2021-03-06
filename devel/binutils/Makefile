# Created by: Martin Matuska <mm@FreeBSD.org>
# $FreeBSD$

PORTNAME=	binutils
PORTVERSION=	2.25
PORTREVISION?=	0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEWARE}
MASTER_SITE_SUBDIR=	binutils/releases

MAINTAINER?=	bapt@FreeBSD.org
COMMENT?=	GNU binary tools

LICENSE=	GPLv3 LGPL3
LICENSE_COMB=	multi

BUILD_DEPENDS=	${LOCALBASE}/lib/libgmp.so:${PORTSDIR}/math/gmp \
		${LOCALBASE}/lib/libmpfr.so:${PORTSDIR}/math/mpfr

CONFLICTS=	libbfd-[0-9]*

OPTIONS_DEFINE=	NLS

LICENSE_FILE_GPLv3=	${WRKSRC}/COPYING3
LICENSE_FILE_LGPL3=	${WRKSRC}/COPYING3.LIB

USES=		bison gmake libtool tar:bzip2 compiler:env
GNU_CONFIGURE=	yes

.if defined(PKGNAMEPREFIX)
BUTARGET?=	${PKGNAMEPREFIX}${OPSYS:tl}
OPTIONS_EXCLUDE=	NLS
INFO_PATH=	${PKGNAMEPREFIX:S/-$//}/info
CONFIGURE_ARGS+=	--disable-shared \
			--target=${BUTARGET}
.else
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-system-zlib \
			--with-gmp=${LOCALBASE} \
			--with-mpfr=${LOCALBASE}
INFO=		as \
		binutils \
		gprof \
		bfd \
		ld
.endif

CONFIGURE_ARGS+=	--disable-werror \
			--with-sysroot=/

OPTIONS_SUB=	yes
NLS_USES=	gettext
NLS_CONFIGURE_ENABLE=	nls

.include <bsd.port.pre.mk>

.if ! defined(PKGNAMEPREFIX) && ${OSVERSION} < 900000
EXTRA_PATCHES+=	${FILESDIR}/allow-missing-group-info
.endif

# Actual earliest version may differ slightly
.if ${ARCH} != ia64 && ${ARCH} != mips && ${ARCH} != mips64 && ${OSVERSION} >= 900044 && !defined(PKGNAMEPREFIX) && (${COMPILER_TYPE} == clang && ${COMPILER_VERSION} >= 34 || ${COMPILER_TYPE} == gcc)
CONFIGURE_ARGS+=	--enable-gold --enable-plugins
PLIST_SUB+=	GOLD=""
.else
PLIST_SUB+=	GOLD="@comment "
.endif

.if ${ARCH} == "amd64"
CONFIGURE_TARGET=	x86_64-portbld-freebsd${OSREL}
.else
CONFIGURE_TARGET=	${ARCH}-portbld-freebsd${OSREL}
.endif

post-install:
.if !defined(PKGNAMEPREFIX)
.if ${OSVERSION} >= 900044
	${INSTALL_DATA} ${WRKSRC}/include/plugin-api.h ${STAGEDIR}${PREFIX}/include/
.endif
	@${FIND} -ds ${STAGEDIR}${PREFIX}/${CONFIGURE_TARGET} ! -type d | \
		${SED} -e 's,^${STAGEDIR}${PREFIX}/,,' >> ${TMPPLIST}
	${RM} ${STAGEDIR}${PREFIX}/include/ansidecl.h
	${REINPLACE_CMD} '/#include "ansidecl.h"/d' ${STAGEDIR}${PREFIX}/include/bfd.h
.else
.if ${PKGNAMEPREFIX:S/-$//} != ${BUTARGET}
	${RM} -rf ${STAGEDIR}${PREFIX}/${PKGNAMEPREFIX:S/-$//}
.endif
	${LN} -fs ../../bin/${BUTARGET}-size ${STAGEDIR}${PREFIX}/${BUTARGET}/bin/size
.endif

.include <bsd.port.post.mk>
