# Created by: Artyom Mirgorodskiy <artyom.mirgorodsky@gmail.com>
# $FreeBSD$

PORTNAME=	png
PORTVERSION=	1.2.49
PORTREVISION=	1
CATEGORIES=	graphics linux
DISTNAME=	lib${PORTNAME}-${PORTVERSION}-${RPMVERSION}

MAINTAINER=	emulation@FreeBSD.org
COMMENT=	RPM of the PNG lib (Linux CentOS ${LINUX_DIST_VER})

CONFLICTS=	linux-png-[0-9]* linux-f8-png-[0-9]* linux-f10-png-[0-9]*

LINUX_NAME=	libpng
ONLY_FOR_ARCHS=	i386 amd64
RPMVERSION=	1.el6_2
USE_LINUX=	c6
USE_LINUX_RPM=	yes
USE_LDCONFIG=	yes

PLIST_FILES=	usr/lib/libpng.so.3 \
		usr/lib/libpng.so.3.49.0 \
		usr/lib/libpng12.so.0 \
		usr/lib/libpng12.so.0.49.0 \
		usr/share/man/man5/png.5.gz
DOCSDIR=	${PREFIX}/usr/share/doc/libpng-${PORTVERSION}
PORTDOCS=	CHANGES LICENSE README TODO example.c libpng-1.2.49.txt CMakeLists.txt
DESCR=		${.CURDIR}/../${PORTNAME}/pkg-descr

.include <bsd.port.mk>
