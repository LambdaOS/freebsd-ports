# Created by: jupengfei <jupengfei@gmail.com>
# $FreeBSD$

PORTNAME=	Parse-CPAN-Packages-Fast
PORTVERSION=	0.08
PORTREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Parse CPAN's package index

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-CPAN-DistnameInfo>=0:${PORTSDIR}/devel/p5-CPAN-DistnameInfo
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
