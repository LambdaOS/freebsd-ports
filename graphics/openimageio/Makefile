# Created by: Shane Ambler <FreeBSD@Shaneware.biz>
# $FreeBSD$

PORTNAME=	openimageio
PORTVERSION=	1.4.15
PORTREVISION?=	0
CATEGORIES?=	graphics multimedia

MAINTAINER?=	FreeBSD@Shaneware.biz
COMMENT?=	OpenImageIO graphics library

LICENSE=	BSD3CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	OpenImageIO
GH_PROJECT=	oiio
GH_TAGNAME=	Release-${PORTVERSION}
GH_COMMIT=	99a9988

# fbm also installs bin/idiff
CONFLICTS=	fbm-[0-9]*

USES=		cmake:outsource compiler
CMAKE_ARGS=	-DBUILDSTATIC:BOOL=OFF \
		-DLINKSTATIC:BOOL=OFF \
		-DNOTHREADS:BOOL=OFF \
		-DSTOP_ON_WARNING:BOOL=OFF

OPTIONS_DEFINE=		DOCS IMAGEVIEWER OCIO TEST
OPTIONS_DEFAULT=	OCIO
OPTIONS_SUB=		yes

IMAGEVIEWER_DESC=	Build image viewer
OCIO_DESC=		Colour management support

DOCS_CMAKE_ON=		-DINSTALL_DOCS:BOOL=ON
DOCS_CMAKE_OFF=		-DINSTALL_DOCS:BOOL=OFF

OCIO_CMAKE_ON=		-DUSE_OCIO:BOOL=ON
OCIO_CMAKE_OFF=		-DUSE_OCIO:BOOL=OFF
OCIO_LIB_DEPENDS=	libOpenColorIO.so:${PORTSDIR}/graphics/opencolorio

TEST_CMAKE_ON=		-DOIIO_BUILD_TESTS:BOOL=ON
TEST_CMAKE_OFF=		-DOIIO_BUILD_TESTS:BOOL=OFF

.include <bsd.port.options.mk>

.if ${SLAVE_PORT} == no
LIB_DEPENDS=	libIlmImf.so:${PORTSDIR}/graphics/OpenEXR \
		libboost_thread.so:${PORTSDIR}/devel/boost-libs \
		libhdf5.so:${PORTSDIR}/science/hdf5 \
		libopencv_legacy.so:${PORTSDIR}/graphics/opencv \
		libopenjpeg.so:${PORTSDIR}/graphics/openjpeg15 \
		libwebp.so:${PORTSDIR}/graphics/webp
USE_LDCONFIG=	yes
CMAKE_ARGS+=	-DUSE_PYTHON:BOOL=OFF -DOIIO_BUILD_TOOLS:BOOL=ON
.else
LIB_DEPENDS=	libOpenImageIO.so:${PORTSDIR}/graphics/openimageio \
		libboost_python.so:${PORTSDIR}/devel/boost-python-libs
USES+=		python
PLIST=		${PKGDIR}/pkg-plist-pybind
CMAKE_ARGS+=	-DUSE_PYTHON:BOOL=ON -DOIIO_BUILD_TOOLS:BOOL=OFF
.endif

.if ${PORT_OPTIONS:MIMAGEVIEWER}
USE_GL=		glew
USE_QT4=	corelib gui opengl qmake_build moc_build rcc_build uic_build
CMAKE_ARGS+=	-DUSE_QT:BOOL=ON -DUSE_OPENGL:BOOL=ON
CMAKE_ENV+=	QTDIR=${QT_PREFIX} QT_INCLUDES=${QT_INCDIR}
.else
CMAKE_ARGS+=	-DUSE_OPENGL:BOOL=OFF -DUSE_QT:BOOL=OFF
.endif

.include <bsd.port.pre.mk>

.if ${COMPILER_TYPE} == gcc
# GCC 4.2 does not link with other ports that now use GCC 4.9 or later.
USE_GCC=	yes
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|share/doc/OpenImageIO|${DOCSDIR}|g' \
		${WRKSRC}/CMakeLists.txt

post-install:
.if ${SLAVE_PORT} == no
	${LN} -sf libOpenImageIO.so.1.4 ${STAGEDIR}${PREFIX}/lib/libOpenImageIO.so.1
	${LN} -sf libOpenImageIO_Util.so.1.4 ${STAGEDIR}${PREFIX}/lib/libOpenImageIO_Util.so.1
.endif

.include <bsd.port.post.mk>
