# Created by: Zhihao Yuan <lichray@gmail.com>
# $FreeBSD$

PORTNAME=	gmusicbrowser
PORTVERSION=	1.1.13
CATEGORIES=	audio
MASTER_SITES=	http://gmusicbrowser.org/download/

MAINTAINER=	lichray@gmail.com
COMMENT=	Jukebox for large collections of mp3/ogg/flac/mpc files

LICENSE=	GPLv3

RUN_DEPENDS=	p5-Gtk2>=1.0:${PORTSDIR}/x11-toolkits/p5-Gtk2

NO_BUILD=	yes

PORTDOCS=	AUTHORS COPYING README NEWS INSTALL layout_doc.html
PORTDATA=	*

USES=		shebangfix
SHEBANG_FILES=	*.pl

OPTIONS_DEFINE=	GSTREAMER DBUS WEBKIT NLS LIBNOTIFY DOCS
OPTIONS_DEFAULT=LIBNOTIFY

LIBNOTIFY_DESC=	Desktop notification
WEBKIT_DESC=	Enable embedded web browser

GSTREAMER_RUN_DEPENDS=	p5-GStreamer>=0:${PORTSDIR}/multimedia/p5-GStreamer
DBUS_RUN_DEPENDS=	p5-Net-DBus>=1.0:${PORTSDIR}/devel/p5-Net-DBus
WEBKIT_RUN_DEPENDS=	p5-Gtk2-WebKit>=0:${PORTSDIR}/www/p5-Gtk2-WebKit
LIBNOTIFY_RUN_DEPENDS=	p5-Gtk2-Notify>=0.05:${PORTSDIR}/devel/p5-Gtk2-Notify
NLS_RUN_DEPENDS=	p5-Locale-gettext>=1.0:${PORTSDIR}/devel/p5-Locale-gettext
OPTIONS_SUB=	yes

.include <bsd.port.options.mk>

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}.pl ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.man ${STAGEDIR}${MANPREFIX}/man/man1/${MAN1}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.desktop ${STAGEDIR}${DESKTOPDIR}
	@${MKDIR} ${STAGEDIR}${DATADIR}
	(cd ${WRKSRC} && (for d in layouts pix plugins; do \
		${COPYTREE_SHARE} $$d ${STAGEDIR}${DATADIR}; done) && \
		${INSTALL_DATA} *.pm ${STAGEDIR}${DATADIR} && \
		${INSTALL_SCRIPT} iceserver.pl ${STAGEDIR}${DATADIR})
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	(cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${STAGEDIR}${DOCSDIR})
.if ${PORT_OPTIONS:MNLS}
	(cd ${WRKSRC}/locale && \
		${COPYTREE_SHARE} \* ${STAGEDIR}${PREFIX}/share/locale)
.endif

.include <bsd.port.mk>
