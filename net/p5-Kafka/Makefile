# Created by: gebhart@secnetix.de
# $FreeBSD$

PORTNAME=	Kafka
PORTVERSION=	0.8010
CATEGORIES=	net perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:SGLADKOV
PKGNAMEPREFIX=	p5-

MAINTAINER=	gebhart@secnetix.de
COMMENT=	Apache Kafka interface for Perl

LICENSE=	ART10

BUILD_DEPENDS=	p5-Compress-Snappy>=0:${PORTSDIR}/archivers/p5-Compress-Snappy \
		p5-Socket>=2:${PORTSDIR}/net/p5-Socket \
		p5-Try-Tiny>=0:${PORTSDIR}/lang/p5-Try-Tiny \
		p5-Exporter>=0:${PORTSDIR}/devel/p5-Exporter \
		p5-Const-Fast>=0:${PORTSDIR}/devel/p5-Const-Fast \
		p5-Data-Compare>=0:${PORTSDIR}/devel/p5-Data-Compare \
		p5-String-CRC32>=0:${PORTSDIR}/devel/p5-String-CRC32 \
		p5-Exception-Class>=0:${PORTSDIR}/devel/p5-Exception-Class \
		p5-Sys-SigAction>=0:${PORTSDIR}/devel/p5-Sys-SigAction \
		p5-Scalar-List-Utils>=1:${PORTSDIR}/lang/p5-Scalar-List-Utils \
		p5-Scalar-Util-Numeric>=0:${PORTSDIR}/devel/p5-Scalar-Util-Numeric \
		p5-Data-HexDump-Range>=0:${PORTSDIR}/devel/p5-Data-HexDump-Range

RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
