# $FreeBSD$

PORTNAME=	signatures
PORTVERSION=	0.11
CATEGORIES=	lang perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:ETHER
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Subroutine signatures for Perl with no source filter

BUILD_DEPENDS=	p5-B-Hooks-OP-Check>=0.18:${PORTSDIR}/devel/p5-B-Hooks-OP-Check \
		p5-B-Hooks-Parser>=0.07:${PORTSDIR}/devel/p5-B-Hooks-Parser \
		p5-B-Hooks-OP-PPAddr>0:${PORTSDIR}/devel/p5-B-Hooks-OP-PPAddr \
		p5-ExtUtils-Depends>=0.302:${PORTSDIR}/devel/p5-ExtUtils-Depends \
		p5-B-Hooks-EndOfScope>=0.08:${PORTSDIR}/devel/p5-B-Hooks-EndOfScope
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
