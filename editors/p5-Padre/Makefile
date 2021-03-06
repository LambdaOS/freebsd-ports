# Created by: Cezary Morga <cm@therek.net>
# $FreeBSD$

PORTNAME=	Padre
PORTVERSION=	1.00
PORTREVISION=	4
CATEGORIES=	editors perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN} ${MASTER_SITE_PERL_CPAN:S/$/:wxsc/}
MASTER_SITE_SUBDIR=	${PORTNAME}/:DEFAULT Wx/:wxsc
PKGNAMEPREFIX=	p5-
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} ${WXSC_DISTFILE}:wxsc

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Perl Application Development and Refactoring Environment

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-JSON-XS>=2.29:${PORTSDIR}/converters/p5-JSON-XS \
		p5-DBD-SQLite>=1.35:${PORTSDIR}/databases/p5-DBD-SQLite \
		p5-DBI>=1.58:${PORTSDIR}/databases/p5-DBI \
		databases/p5-ORLite-Migrate>0:${PORTSDIR}/databases/p5-ORLite-Migrate \
		p5-Algorithm-Diff>=1.19:${PORTSDIR}/devel/p5-Algorithm-Diff \
		p5-App-cpanminus>=0.9923:${PORTSDIR}/devel/p5-App-cpanminus \
		p5-Capture-Tiny>0:${PORTSDIR}/devel/p5-Capture-Tiny \
		p5-Class-Adapter>=1.05:${PORTSDIR}/devel/p5-Class-Adapter \
		p5-Class-Inspector>=1.22:${PORTSDIR}/devel/p5-Class-Inspector \
		p5-Class-XSAccessor>=1.13:${PORTSDIR}/devel/p5-Class-XSAccessor \
		p5-Data-Dumper>=2.101:${PORTSDIR}/devel/p5-Data-Dumper \
		p5-Debug-Client>=0.20:${PORTSDIR}/devel/p5-Debug-Client \
		p5-Devel-Dumpvar>=0.04:${PORTSDIR}/devel/p5-Devel-Dumpvar \
		p5-Devel-Refactor>=0.05:${PORTSDIR}/devel/p5-Devel-Refactor \
		p5-File-Copy-Recursive>=0.37:${PORTSDIR}/devel/p5-File-Copy-Recursive \
		p5-File-Find-Rule>=0.30:${PORTSDIR}/devel/p5-File-Find-Rule \
		p5-File-HomeDir>=0.84:${PORTSDIR}/devel/p5-File-HomeDir \
		p5-File-Path>=2.08:${PORTSDIR}/devel/p5-File-Path \
		p5-File-ShareDir>=1.00:${PORTSDIR}/devel/p5-File-ShareDir \
		p5-IO-stringy>=2.110:${PORTSDIR}/devel/p5-IO-stringy \
		p5-IPC-Run>=0.83:${PORTSDIR}/devel/p5-IPC-Run \
		p5-List-MoreUtils>=0.22:${PORTSDIR}/lang/p5-List-MoreUtils \
		p5-Locale-Msgfmt>=0.14:${PORTSDIR}/devel/p5-Locale-Msgfmt \
		p5-Module-Manifest>=0.07:${PORTSDIR}/devel/p5-Module-Manifest \
		p5-PPI>=1.213:${PORTSDIR}/textproc/p5-PPI \
		p5-Module-Starter>=1.60:${PORTSDIR}/devel/p5-Module-Starter \
		p5-Parse-ErrorString-Perl>=0.14:${PORTSDIR}/devel/p5-Parse-ErrorString-Perl \
		p5-Parse-ExuberantCTags>=1.00:${PORTSDIR}/devel/p5-Parse-ExuberantCTags \
		p5-Pod-Abstract>=0.16:${PORTSDIR}/textproc/p5-Pod-Abstract \
		p5-Sort-Versions>=1.5:${PORTSDIR}/devel/p5-Sort-Versions \
		p5-Test-Exception>=0.27:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Test-MockObject>=1.09:${PORTSDIR}/devel/p5-Test-MockObject \
		p5-Test-NoWarnings>=0.084:${PORTSDIR}/devel/p5-Test-NoWarnings \
		p5-Test-Script>=1.07:${PORTSDIR}/devel/p5-Test-Script \
		p5-URI>0:${PORTSDIR}/net/p5-URI \
		p5-Pod-POM>=0.17:${PORTSDIR}/textproc/p5-Pod-POM \
		p5-POD2-Base>=0.043:${PORTSDIR}/textproc/p5-POD2-Base \
		p5-PPIx-EditorTools>=0.13:${PORTSDIR}/textproc/p5-PPIx-EditorTools \
		p5-PPIx-Regexp>=0.011:${PORTSDIR}/textproc/p5-PPIx-Regexp \
		p5-Template-Tiny>=0.11:${PORTSDIR}/textproc/p5-Template-Tiny \
		p5-Text-Diff>=1.41:${PORTSDIR}/textproc/p5-Text-Diff \
		p5-Text-FindIndent>=0.10:${PORTSDIR}/textproc/p5-Text-FindIndent \
		p5-Text-Patch>=1.8:${PORTSDIR}/textproc/p5-Text-Patch \
		p5-YAML-Tiny>=1.32:${PORTSDIR}/textproc/p5-YAML-Tiny \
		p5-HTML-Parser>=3.58:${PORTSDIR}/www/p5-HTML-Parser \
		p5-libwww>=5.815:${PORTSDIR}/www/p5-libwww \
		p5-Wx>=0.97:${PORTSDIR}/x11-toolkits/p5-Wx \
		p5-Wx-Perl-ProcessStream>=0.25:${PORTSDIR}/x11-toolkits/p5-Wx-Perl-ProcessStream
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		gettext perl5
USE_PERL5=	configure
USE_WX=		3.0
WX_COMPS=	wx
WX_UNICODE=	yes
MAKE_JOBS_UNSAFE=	yes

DESKTOP_ENTRIES="Padre" \
		"The Perl IDE" \
		"${PREFIX}/${SITE_PERL_REL}/auto/share/dist/Padre/icons/padre/64x64/logo.png" \
		"padre" \
		"Development;IDE;" \
		""

WXSC_NAME=	Wx-Scintilla
WXSC_VERSION=	0.39
WXSC_DISTNAME=	${WXSC_NAME}-${WXSC_VERSION}
WXSC_DISTFILE=	${WXSC_DISTNAME}.tar.gz

.include <bsd.port.pre.mk>

.if exists(${PERL})
PERL_THREADS!=	${PERL} -V::useithreads
.endif

post-extract:
.if exists(${PERL})
.if ${PERL_THREADS} != "'define';"
IGNORE=		needs a threaded Perl, build with enabling THREADS option and try again
.endif
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		'/my /s|wx-config|${WX_CONFIG:T}|g' \
		${WRKDIR}/${WXSC_DISTNAME}/inc/Module/Build/Scintilla.pm
	@${REINPLACE_CMD} -e \
		's|_scintilla-|_scintilla| ; \
		 s|$$major.*$$release \.|| ; \
		 /$$major.*$$release;/s|^|#| ; \
		 s|-lgtk-x11-2.0.*-lpangoft2-1.0|-lm| ; \
		 /-lgobject-2.0/d ; \
		 /-lglib-2.0/d ; \
		 s|\\$$ORIGIN|${SITE_ARCH}/auto/Wx/Scintilla|' \
		${WRKDIR}/${WXSC_DISTNAME}/inc/Module/Build/Scintilla/GTK.pm

pre-configure:
	@(cd ${WRKDIR}/${WXSC_DISTNAME} && ${SETENV} ${CONFIGURE_ENV} \
		${PERL} Build.PL ${CONFIGURE_ARGS} --destdir=${STAGEDIR})

pre-build:
	@(cd ${WRKDIR}/${WXSC_DISTNAME} && ${SETENV} CC="$$(${WHICH} ${CC})" \
		${PERL} Build)

pre-install:
	@(cd ${WRKDIR}/${WXSC_DISTNAME} && ${SETENV} CC="$$(${WHICH} ${CC})" \
		${PERL} Build install)

post-install:
	@(cd ${STAGEDIR}${PREFIX}/${SITE_ARCH_REL}/auto/Wx/Scintilla && \
		${CHMOD} u+w libwx_gtk2u_scintilla.so && \
		${STRIP_CMD} libwx_gtk2u_scintilla.so && \
		${CHMOD} u-w libwx_gtk2u_scintilla.so)

.include <bsd.port.post.mk>
