# $FreeBSD$

PORTNAME=	u-boot
PORTVERSION=	2013.10
CATEGORIES=	sysutils
PKGNAMESUFFIX=	-cubox-hummingboard
DISTNAME=	u-boot-${PORTVERSION}-solidrun-imx6

MAINTAINER=	ian@FreeBSD.org
COMMENT=	Cross-build U-Boot loader for SolidRun Cubox

LICENSE=	GPLv2

BUILD_DEPENDS=  arm-none-eabi-gcc:${PORTSDIR}/devel/arm-none-eabi-gcc

USE_GITHUB=	yes
GH_ACCOUNT=	SolidRun
GH_PROJECT=	u-boot-imx6
GH_COMMIT=	e4bc4c3
GH_TAGNAME=	${GH_COMMIT}

NO_ARCH=	yes

WRKSRC=		${WRKDIR}/${GH_ACCOUNT}-${GH_PROJECT}-${GH_TAGNAME}
USES=		gmake
SSP_UNSAFE=	yes # cross-build static linking dies with -fstack-protector

U_BOOT_DIR=	share/u-boot/${PORTNAME}${PKGNAMESUFFIX}
PLIST_DIRS=	${U_BOOT_DIR} share/u-boot
PLIST_FILES=	${U_BOOT_DIR}/u-boot.imx \
		${U_BOOT_DIR}/README

MAKE_ARGS+=	ARCH=arm \
		CROSS_COMPILE=arm-none-eabi- \
		HOSTCC=clang

do-configure:
	cd ${WRKSRC}; ${GMAKE} ${MAKE_ARGS} mx6_cubox-i_config

# The build results in two output files: SPL, and u-boot.img.
# Combine them into a single u-boot.imx so that there is only one file to be
# copied onto the boot media starting at a 1K offset on the disk.
IMXFILE=	${STAGEDIR}/${PREFIX}/${U_BOOT_DIR}/u-boot.imx
do-install:
	${MKDIR} ${STAGEDIR}/${PREFIX}/${U_BOOT_DIR}
	dd bs=1k oseek=0  conv=sync of=${IMXFILE} if=${WRKSRC}/SPL
	dd bs=1k oseek=41 conv=sync of=${IMXFILE} if=${WRKSRC}/u-boot.img
	${CP} ${.CURDIR}/pkg-descr ${STAGEDIR}/${PREFIX}/${U_BOOT_DIR}/README

.include <bsd.port.mk>
