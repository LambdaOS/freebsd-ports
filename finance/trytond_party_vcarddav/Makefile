# Created by: Matthias Petermann <matthias@petermann-it.de>
# $FreeBSD$

PORTNAME=	trytond_party_vcarddav
PORTVERSION=	2.4.2
PORTREVISION=	1
CATEGORIES=	finance python
MASTER_SITES=	http://downloads.tryton.org/${PORTVERSION:R}/

MAINTAINER=	matthias@petermann-it.de
COMMENT=	Tryton Application Platform (Party VCardDAV Module)

LICENSE=	GPLv3

RUN_DEPENDS=	trytond>=2.4.0:${PORTSDIR}/finance/trytond \
		trytond_party>=2.4.0:${PORTSDIR}/finance/trytond_party \
		${PYTHON_PKGNAMEPREFIX}vobject>=0.8.1:${PORTSDIR}/deskutils/py-vobject \
		${PYTHON_PKGNAMEPREFIX}PyWebDAV>=0:${PORTSDIR}/www/py-pywebdav

CONFLICTS=	trytond28_party_vcarddav-2.8.*

USES=		python
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
