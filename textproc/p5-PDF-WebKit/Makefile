# Created by: Gea-Suan Lin <gslin@gslin.org>
# $FreeBSD$

PORTNAME=	PDF-WebKit
PORTVERSION=	0.92
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Use WebKit to Generate PDFs from HTML

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-IPC-Run>=0:${PORTSDIR}/devel/p5-IPC-Run \
		p5-Moose>=0:${PORTSDIR}/devel/p5-Moose \
		p5-XML-LibXML>=1.62:${PORTSDIR}/textproc/p5-XML-LibXML
RUN_DEPENDS:=	${BUILD_DEPENDS} \
		wkhtmltopdf:${PORTSDIR}/converters/wkhtmltopdf
TEST_DEPENDS=	p5-Test-Spec:${PORTSDIR}/devel/p5-Test-Spec

USE_PERL5=	configure
USES=		perl5
NO_ARCH=	yes

.include <bsd.port.mk>
