# Created by: alepulver
# $FreeBSD$

PORTNAME=	assaultcube
PORTVERSION=	1.2.0.2
PORTREVISION=	3
CATEGORIES=	games
MASTER_SITES=	SF/actiongame/AssaultCube%20Version%20${PORTVERSION}
DISTNAME=	AssaultCube_v${PORTVERSION}

MAINTAINER=	lightside@gmx.com
COMMENT=	Total conversion of the FPS game called Cube

LICENSE=	ACUBE CUBE MIT OTHER
LICENSE_COMB=	multi
LICENSE_NAME_ACUBE=	AssaultCube ZLIB-like license with additions
LICENSE_NAME_CUBE=	Cube game engine ZLIB-like license with additions
LICENSE_NAME_OTHER=	various package licences
LICENSE_FILE_ACUBE=	${WRKSRC}/source/README.txt
LICENSE_FILE_CUBE=	${WRKSRC}/source/README_CUBEENGINE.txt
LICENSE_FILE_OTHER=	${WRKSRC}/docs/package_copyrights.txt
LICENSE_PERMS_ACUBE=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept
LICENSE_PERMS_CUBE=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept
LICENSE_PERMS_OTHER=	dist-mirror pkg-mirror auto-accept

USES=		gmake tar:bzip2
GNU_CONFIGURE=	yes
ALL_TARGET=	libenet
WRKSRC=		${WRKDIR}/AssaultCube_v${PORTVERSION}
CONFIGURE_ARGS=	--enable-shared=no --enable-static=yes
CONFIGURE_WRKSRC=	${WRKSRC}/source/enet
BUILD_WRKSRC=	${WRKSRC}/source/src
SUB_FILES=	${PLIST_FILES:Mbin/*:T}

PORTDATA=	config packages scripts
PORTDOCS=	*
PLIST_DIRS=	%%DATADIR%%/packages/maps/servermaps/incoming

OPTIONS_DEFINE=	DOCS
OPTIONS_MULTI=	BUILD
OPTIONS_MULTI_BUILD=	CLIENT DEDICATED MASTER
OPTIONS_DEFAULT=	CLIENT DEDICATED

CLIENT_DESC=	Build client
CLIENT_USES=		gettext-runtime openal:al
CLIENT_USE=		GL=gl SDL=image,sdl XORG=x11
CLIENT_LIB_DEPENDS=	libvorbisfile.so:${PORTSDIR}/audio/libvorbis \
			libcurl.so:${PORTSDIR}/ftp/curl
CLIENT_ALL_TARGET=	client
CLIENT_PLIST_FILES=	bin/${PORTNAME}_client libexec/${PORTNAME}_client \
			share/pixmaps/${PORTNAME}.png
DEDICATED_DESC=	Build dedicated server
DEDICATED_ALL_TARGET=	server
DEDICATED_PLIST_FILES=	bin/${PORTNAME}_server libexec/${PORTNAME}_server
MASTER_DESC=	Build master server
MASTER_ALL_TARGET=	master
MASTER_PLIST_FILES=	bin/${PORTNAME}_master libexec/${PORTNAME}_master

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MCLIENT}
DESKTOP_ENTRIES="AssaultCube" "${COMMENT}" \
	"${PREFIX}/share/pixmaps/${PORTNAME}.png" "${PORTNAME}_client" \
	"Game;" false
.endif

do-install:
.for f in ${PLIST_FILES:Mbin/*}
	${INSTALL_SCRIPT} ${WRKDIR}/${f:T} ${STAGEDIR}${PREFIX}/${f}
.endfor
.for f in ${PLIST_FILES:Mlibexec/*}
	${INSTALL_PROGRAM} ${BUILD_WRKSRC}/${f:T:S/${PORTNAME}/ac/} \
		${STAGEDIR}${PREFIX}/${f}
.endfor
.if ${PORT_OPTIONS:MCLIENT}
	${INSTALL_DATA} ${WRKSRC}/docs/images/icon.png \
		${STAGEDIR}${PREFIX}/share/pixmaps/${PORTNAME}.png
.endif
	(cd ${WRKSRC} && ${COPYTREE_SHARE} "${PORTDATA}" ${STAGEDIR}${DATADIR})
	(cd ${WRKSRC}/docs && ${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR})

.include <bsd.port.mk>
