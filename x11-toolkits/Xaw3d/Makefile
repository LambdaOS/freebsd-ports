# Created by: asami
# $FreeBSD$

PORTNAME=	Xaw3d
PORTVERSION=	1.5E
PORTREVISION=	6
CATEGORIES=	x11-toolkits
MASTER_SITES=	http://slackware.cs.utah.edu/pub/slackware/slackware64-13.1/source/x/xaw3d/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	3-D Athena Widget set that looks like Motif

LICENSE=	MIT

OPTIONS_DEFINE=	DOCS NLS
WRKSRC=		${WRKDIR}/xc/lib/Xaw3d
USES=		imake
USE_XORG=	x11 xext xmu xt sm ice xpm
USE_LDCONFIG=	yes

SUB_FILES=	pkg-message
XAWVER=		8
SUB_LIST=	XAWVER="${XAWVER}"

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USES+=		gettext
PLIST_SUB+=	NLS=""
.else
PLIST_SUB+=	NLS="@comment "
.endif

post-extract:
	@${MKDIR} ${WRKSRC}/X11/Xaw3d
	@cd ${WRKSRC}/X11/Xaw3d; ${LN} -sf ../../*.h .
.if ! ${PORT_OPTIONS:MNLS}
	@${REINPLACE_CMD} -e '/LINTLIBS =/s/=.*/=/' \
		-e '/#ifdef XawI18nDefines/s//#if 0/' \
		${WRKSRC}/Imakefile
.endif

post-install:
	${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.XAW3D ${STAGEDIR}${DOCSDIR}/

.include <bsd.port.mk>
