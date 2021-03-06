# Created by: Yuri Victorovich <yuri@rawbw.com>
# $FreeBSD$

PORTNAME=	qTox
PORTVERSION=	0.150317
CATEGORIES=	net-im net-p2p

MAINTAINER=	yuri@rawbw.com
COMMENT=	Qt 5 based Tox client

LICENSE=	GPLv3

BROKEN=		Fails to build

BUILD_DEPENDS=	${LOCALBASE}/lib/libtoxcore.a:${PORTSDIR}/net-im/tox
LIB_DEPENDS=	libopencv_highgui.so:${PORTSDIR}/graphics/opencv \
		libopencv_core.so:${PORTSDIR}/graphics/opencv-core \
		libvpx.so:${PORTSDIR}/multimedia/libvpx \
		libfilteraudio.so:${PORTSDIR}/audio/filter_audio \
		libsodium.so:${PORTSDIR}/security/libsodium \
		libqrencode.so:${PORTSDIR}/graphics/libqrencode
RUN_DEPENDS=	${LOCALBASE}/lib/libtoxcore.a:${PORTSDIR}/net-im/tox

USE_GITHUB=	yes
GH_ACCOUNT=	tux3
GH_COMMIT=	de42357
GH_TAGNAME=	${GH_COMMIT}

USES=		compiler:c++11-lib desktop-file-utils openal:soft qmake gmake
USE_GNOME=	glib20 gtk20 cairo gdkpixbuf2
USE_XORG=	x11 xscrnsaver
USE_QT5=	core gui network xml opengl sql sql-sqlite3_run widgets svg \
		concurrent buildtools_build linguisttools_build

PLIST_FILES=	bin/qtox \
		share/applications/qTox.desktop

pre-everything::
	@${ECHO_MSG}
	@${ECHO_MSG} "Warning: qTox won't build if the option NaCl was selected for Tox!"
	@${ECHO_MSG}

post-patch:
	@${REINPLACE_CMD} -e 's|$$$$system(git rev-parse HEAD)|"${GH_COMMIT}"|' \
		${WRKSRC}/qtox.pro
	@${REINPLACE_CMD} -e 's|INCLUDEPATH += "/usr/include|INCLUDEPATH += "/usr/local/include|' \
		${WRKSRC}/qtox.pro
	@${REINPLACE_CMD} -e 's|INCLUDEPATH += "/usr/lib|INCLUDEPATH += "/usr/local/lib|' \
		${WRKSRC}/qtox.pro

pre-configure:
	@${REINPLACE_CMD} '/Comment/s,=.*,=${COMMENT},' \
		${WRKSRC}/qTox.desktop

.include <bsd.port.mk>
