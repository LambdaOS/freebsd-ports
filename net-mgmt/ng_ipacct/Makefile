# Created by: Sergey Skvortsov <skv@protey.ru>
# $FreeBSD$

PORTNAME=	ng_ipacct
PORTVERSION=	20150304
CATEGORIES=	net-mgmt

MAINTAINER=	vsevolod@FreeBSD.org
COMMENT=	Netgraph IP accounting

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
USES=		kmod uidfix

GH_ACCOUNT=	vstakhov
GH_PROJECT=	ng_ipacct
GH_TAGNAME=	${PORTVERSION}
GH_COMMIT=	68ff97c

MAKE_ENV=	BINDIR="${PREFIX}/sbin"

USE_RC_SUBR=	ng_ipacct
SUB_FILES=	pkg-message
CFLAGS+=	-DMEM_USE_ZONE

post-patch:
	@${REINPLACE_CMD} 's,{MANDIR},{DESTDIR}$$&,' ${WRKSRC}/man_ru/Makefile

post-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/include/netgraph
	${INSTALL_DATA} ${WRKSRC}/ng_ipacct/ng_ipacct.h ${STAGEDIR}${PREFIX}/include/netgraph
	${INSTALL_DATA} ${FILESDIR}/ng_ipacct.conf \
		${STAGEDIR}${PREFIX}/etc/ng_ipacct.conf.sample

.include <bsd.port.mk>
