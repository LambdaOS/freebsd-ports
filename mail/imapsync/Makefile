# Created by: Alex Deiter <tiamat@komi.mts.ru>
# $FreeBSD$

PORTNAME=	imapsync
PORTVERSION=	1.607
CATEGORIES=	mail perl5
MASTER_SITES=	https://fedorahosted.org/released/${PORTNAME}/

MAINTAINER=	pi@FreeBSD.org
COMMENT=	IMAP synchronization, copy or migration tool

RUN_DEPENDS=	p5-Mail-IMAPClient>0:${PORTSDIR}/mail/p5-Mail-IMAPClient \
		p5-Term-ReadKey>0:${PORTSDIR}/devel/p5-Term-ReadKey \
		p5-IO-Tee>0:${PORTSDIR}/devel/p5-IO-Tee \
		p5-IO-Socket-SSL>0:${PORTSDIR}/security/p5-IO-Socket-SSL \
		p5-Unicode-String>0:${PORTSDIR}/converters/p5-Unicode-String \
		p5-File-Copy-Recursive>0:${PORTSDIR}/devel/p5-File-Copy-Recursive

USES=		perl5 tar:tgz
NO_BUILD=	yes

PORTSCOUT=	limit:^1\.(\d\.){3}

PLIST_FILES=	bin/${PORTNAME} man/man1/${PORTNAME}.1.gz

POD2MAN?=	pod2man

do-patch:
	${REINPLACE_CMD} \
		-e 's|/usr/bin/perl|${PERL}|g' \
		${WRKSRC}/${PORTNAME}

do-install:
	${POD2MAN} ${WRKSRC}/${PORTNAME} ${WRKSRC}/${PORTNAME}.1
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${STAGEDIR}${MAN1PREFIX}/man/man1

.include <bsd.port.mk>
