# $FreeBSD$

PORTNAME=	geany-plugin-vc
PORTVERSION=	${GEANY_VER}
CATEGORIES=	devel

MAINTAINER=	makc@FreeBSD.org
COMMENT=	Geany plugin: ${${GEANY_PLUGIN}_DESC}

OPTIONS_DEFINE=	GTKSPELL
OPTIONS_DEFAULT=	GTKSPELL

GTKSPELL_DESC=	Spell checking support via GtkSpell
GTKSPELL_LIB_DEPENDS=	libgtkspell.so:${PORTSDIR}/textproc/gtkspell
GTKSPELL_CONFIGURE_ENABLE=	gtkspell

.include "${.CURDIR}/../geany-plugins/files/Makefile.common"
.include <bsd.port.mk>
