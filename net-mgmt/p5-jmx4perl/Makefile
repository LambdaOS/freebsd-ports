# $FreeBSD$

PORTNAME=	jmx4perl
PORTVERSION=	1.11
CATEGORIES=	net-mgmt perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	../by-authors/id/R/RO/ROLAND
PKGNAMEPREFIX=	p5-
DISTFILES=	${DISTNAME}_2${EXTRACT_SUFX}

MAINTAINER=	tj@FreeBSD.org
COMMENT=	JMX access for Perl

RUN_DEPENDS=	p5-Archive-Zip>=0:${PORTSDIR}/archivers/p5-Archive-Zip \
		p5-Carp>=0:${PORTSDIR}/devel/p5-Carp \
		p5-Config-General>=0:${PORTSDIR}/devel/p5-Config-General \
		p5-Crypt-Blowfish_PP>=0:${PORTSDIR}/security/p5-Crypt-Blowfish_PP \
		p5-Crypt-OpenPGP>=0:${PORTSDIR}/security/p5-Crypt-OpenPGP \
		p5-Digest-MD5>=0:${PORTSDIR}/security/p5-Digest-MD5 \
		p5-Digest-SHA1>=0:${PORTSDIR}/security/p5-Digest-SHA1 \
		p5-File-SearchPath>=0:${PORTSDIR}/devel/p5-File-SearchPath \
		p5-File-Temp>=0:${PORTSDIR}/devel/p5-File-Temp \
		p5-Getopt-Long>=0:${PORTSDIR}/devel/p5-Getopt-Long \
		p5-JSON>=0:${PORTSDIR}/converters/p5-JSON \
		p5-Module-Find>=0:${PORTSDIR}/devel/p5-Module-Find \
		p5-Nagios-Plugin>=0:${PORTSDIR}/net-mgmt/p5-Nagios-Plugin \
		p5-Scalar-List-Utils>=0:${PORTSDIR}/lang/p5-Scalar-List-Utils \
		p5-Sys-SigAction>=0:${PORTSDIR}/devel/p5-Sys-SigAction \
		p5-Term-Clui>=0:${PORTSDIR}/devel/p5-Term-Clui \
		p5-Term-ProgressBar>=0:${PORTSDIR}/devel/p5-Term-ProgressBar \
		p5-Term-ShellUI>=0:${PORTSDIR}/shells/p5-Term-ShellUI \
		p5-Term-Size>=0:${PORTSDIR}/devel/p5-Term-Size \
		p5-Text-ParseWords>=0:${PORTSDIR}/textproc/p5-Text-ParseWords \
		p5-Time-HiRes>=0:${PORTSDIR}/devel/p5-Time-HiRes \
		p5-URI>=0:${PORTSDIR}/net/p5-URI \
		p5-XML-LibXML>=0:${PORTSDIR}/textproc/p5-XML-LibXML \
		p5-XML-Twig>=0:${PORTSDIR}/textproc/p5-XML-Twig \
		p5-libwww>=0:${PORTSDIR}/www/p5-libwww
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	modbuild

ETC_FILES=	common.cfg \
		glassfish.cfg \
		jboss.cfg \
		jetty.cfg \
		memory.cfg \
		metrics.cfg \
		threads.cfg \
		tomcat.cfg \
		weblogic.cfg

SUB_FILES=	pkg-install pkg-deinstall
SUB_LIST=	ETC_FILES="${ETC_FILES}"
WRKSRC=		${WRKDIR}/${DISTNAME}_2

post-install:
	@${MKDIR} ${STAGEDIR}${ETCDIR}
.for f in ${ETC_FILES}
	${INSTALL_DATA} ${WRKSRC}/config/${f} ${STAGEDIR}${ETCDIR}/${f}.sample
.endfor

.include <bsd.port.mk>
