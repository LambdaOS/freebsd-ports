# Created by: Sutra Zhou <zhoushuqun@gmail.com>
# $FreeBSD$

PORTNAME=	PropertiesEditor
PORTVERSION=	4.8.2
PORTREVISION=	4
CATEGORIES=	java devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE_JP}
MASTER_SITE_SUBDIR=	propedit/17247
PKGNAMEPREFIX=	eclipse-
DISTNAME=	jp.gr.java_conf.ussiy.app.propedit_${PORTVERSION}_for_eclipse3.0
DIST_SUBDIR=	eclipse

MAINTAINER=	zhoushuqun@gmail.com
COMMENT=	Properties editor for eclipse

BROKEN=		plugin is obsolete or malfunctioning with latest eclipse
DEPRECATED=	evaluation recommendation is to remove rather than update
EXPIRATION_DATE=	2015-04-18

RUN_DEPENDS=	eclipse:${PORTSDIR}/java/eclipse

USES=		zip
NO_BUILD=	yes
NO_WRKSUBDIR=	yes
USE_JAVA=	yes
JAVA_VERSION=	1.6+
JAVA_OS=	native

do-install:
	@${MKDIR} ${STAGEDIR}${PREFIX}/lib/eclipse
	@${CP} -r ${WRKSRC}/eclipse/plugins ${STAGEDIR}${PREFIX}/lib/eclipse
	@${CP} -r ${WRKSRC}/eclipse/features ${STAGEDIR}${PREFIX}/lib/eclipse
	@(cd ${WRKSRC}; ${FIND} -s eclipse/features eclipse/plugins -not -type d) | ${SED} -e 's,^eclipse,lib/eclipse,' >> ${TMPPLIST}
	@(cd ${WRKSRC}; ${FIND} -s -d eclipse/features eclipse/plugins -type d -empty) \
		| ${GREP} -vE 'eclipse/plugins$$|eclipse/features$$' \
		| ${SED} -ne 's,^,@dir lib/,p' >> ${TMPPLIST}

.include <bsd.port.mk>
