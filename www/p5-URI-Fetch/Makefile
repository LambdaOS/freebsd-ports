# Created by: Lars Thegler <lth@FreeBSD.org>
# $FreeBSD$

PORTNAME=	URI-Fetch
PORTVERSION=	0.100
PORTREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	${PORTNAME}-${PORTVERSION:C/0$//}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Smart URI fetching/caching

BUILD_DEPENDS=	p5-Class-ErrorHandler>=0:${PORTSDIR}/devel/p5-Class-ErrorHandler \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
RUN_DEPENDS:=	${BUILD_DEPENDS}

OPTIONS_DEFINE=	CACHE

CACHE_DESC=	Caching Support

USES=		perl5
USE_PERL5=	configure

CACHE_BUILD_DEPENDS=	p5-Cache>=0:${PORTSDIR}/devel/p5-Cache
CACHE_RUN_DEPENDS=	p5-Cache>=0:${PORTSDIR}/devel/p5-Cache

.include <bsd.port.mk>
