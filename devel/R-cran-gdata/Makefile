# Created by: TAKATSU Tomonari <tota@FreeBSD.org>
# $FreeBSD$

PORTNAME=	gdata
PORTVERSION=	2.13.3
PORTREVISION=	1
CATEGORIES=	devel
DISTNAME=	${PORTNAME}_${PORTVERSION}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	Various R programming tools for data manipulation

LICENSE=	GPLv2

RUN_DEPENDS=	R-cran-gtools>0:${PORTSDIR}/devel/R-cran-gtools

USES=		cran:auto-plist perl5 shebangfix
USE_PERL5=	run

SHEBANG_FILES=	inst/perl/*.pl

.include <bsd.port.mk>
