# Created by: Alexander Logvinov <avl@FreeBSD.org>
# $FreeBSD$

PORTNAME=	aptana
PORTVERSION=	1.2.1.23268
PORTREVISION=	4
CATEGORIES=	java devel
MASTER_SITES=	http://update1.aptana.org/rails/${PORTVERSION}/ \
		http://update2.aptana.org/rails/${PORTVERSION}/
PKGNAMEPREFIX=	eclipse-
PKGNAMESUFFIX=	-radrails
DISTNAME=	org.radrails.rails_feature-${PORTVERSION}-278787EUNvWohWG-fz0019H9P9Y9

MAINTAINER=	ports@FreeBSD.org
COMMENT=	IDE for Ruby and the Ruby on Rails framework (Eclipse plugin)

BROKEN=		plugin is obsolete or malfunctioning with latest eclipse
DEPRECATED=	evaluation recommendation is to remove rather than update
EXPIRATION_DATE=	2015-04-18

RUN_DEPENDS=	${LOCALBASE}/lib/eclipse/features/com.aptana.ide.feature_1.2.7.024747.jar:${PORTSDIR}/java/eclipse-aptana

USES=		zip
JAVA_VERSION=	1.6+

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

USE_JAVA=	yes

do-install:
	@(cd ${WRKDIR} && ${COPYTREE_SHARE} "features plugins" ${STAGEDIR}${PREFIX}/lib/eclipse)

.include <bsd.port.mk>
