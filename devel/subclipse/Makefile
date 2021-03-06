# Created by: tux@pinguru.net
# $FreeBSD$

PORTNAME=	subclipse
PORTVERSION=	1.6.5
PORTREVISION=	4
CATEGORIES=	devel java
MASTER_SITES=	http://subclipse.tigris.org/files/documents/906/46495/
DISTNAME=	site-${PORTVERSION}
DIST_SUBDIR=	eclipse

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Subversion plugin for the Eclipse IDE Framework

BROKEN=		plugin is obsolete or malfunctioning with latest eclipse
DEPRECATED=	evaluation recommendation is to remove rather than update
EXPIRATION_DATE=	2015-04-18

RUN_DEPENDS=	${LOCALBASE}/bin/eclipse:${PORTSDIR}/java/eclipse

WRKSRC=		${WRKDIR}
NO_BUILD=	yes
USES=		zip:infozip

ECLIPSE=	${PREFIX}/lib/eclipse
SUBCLIPSE=	org.tigris.subversion.subclipse
SUBCLIPSEFILES=	features/${SUBCLIPSE}_${PORTVERSION} \
		features/${SUBCLIPSE}.graph.feature_1.0.7 \
		features/${SUBCLIPSE}.mylyn_3.0.0 \
		features/org.tigris.subversion.clientadapter.feature_1.6.4.1 \
		features/org.tigris.subversion.clientadapter.javahl.feature_1.6.4.1 \
		features/org.tigris.subversion.clientadapter.svnkit.feature_1.6.4 \
		features/com.collabnet.subversion.merge.feature_1.10.0 \
		features/com.sun.jna_3.0.9 \
		features/org.tmatesoft.svnkit_1.3.0.5847 \
		plugins/org.tigris.subversion.clientadapter_1.6.4.1 \
		plugins/org.tigris.subversion.clientadapter.javahl_1.6.4.1 \
		plugins/org.tigris.subversion.clientadapter.svnkit_1.6.4 \
		plugins/${SUBCLIPSE}.core_${PORTVERSION} \
		plugins/${SUBCLIPSE}.doc_1.3.0 \
		plugins/${SUBCLIPSE}.graph_1.0.7 \
		plugins/${SUBCLIPSE}.mylyn_3.0.0 \
		plugins/${SUBCLIPSE}.ui_${PORTVERSION} \
		plugins/com.collabnet.subversion.merge_1.10.0 \
		plugins/com.sun.jna_3.0.9 \
		plugins/org.tmatesoft.svnkit_1.3.0.5847

post-extract:
.for f in ${SUBCLIPSEFILES}
	cd ${WRKSRC} \
	  && ${MKDIR} ${f} \
	  && ${UNZIP_CMD} ${f}.jar -d ${f}
.endfor

do-install:
.for f in ${SUBCLIPSEFILES}
	@cd ${WRKSRC} \
	  && ${MKDIR} ${STAGEDIR}${ECLIPSE}/${f} \
	  && ${FIND} ${f} -type d -exec ${MKDIR} ${STAGEDIR}${ECLIPSE}/{} \; \
	  && ${FIND} ${f} -type f -exec ${INSTALL_DATA} {} ${STAGEDIR}${ECLIPSE}/{} \;
.endfor

post-install:
.for f in ${SUBCLIPSEFILES}
	@${FIND} ${WRKSRC}/${f} -not -type d \
	  | ${SED} -ne 's,^${WRKSRC},${ECLIPSE:S,^${PREFIX}/,,},p' >> ${TMPPLIST}
	@${FIND} -d ${WRKSRC}/${f} -type d \
	  | ${SED} -ne 's,^${WRKSRC},@dirrm ${ECLIPSE:S,^${PREFIX}/,,},p' >> ${TMPPLIST}
.endfor

.include <bsd.port.mk>
