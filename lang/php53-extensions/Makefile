# $FreeBSD$

PORTNAME=	php53
PORTVERSION=	1.6
CATEGORIES=	lang
MASTER_SITES=	# none
PKGNAMESUFFIX=	-extensions
DISTFILES=	# none
EXTRACT_ONLY=	# none

MAINTAINER=	ports@FreeBSD.org
COMMENT=	"meta-port" to install PHP extensions

DEPRECATED=	security EOL reached 14 Aug 2014
EXPIRATION_DATE=	2015-04-15

PHP_DEFAULT=	53
IGNORE_WITH_PHP=5 52 55
USE_PHP_BUILD=	yes

NO_BUILD=	yes
NO_MTREE=	yes

LATEST_LINK=	${PORTNAME}${PKGNAMESUFFIX}

OPTIONS_DEFINE=	BCMATH BZ2 CALENDAR CTYPE CURL DBA \
		DOM EXIF FILEINFO FILTER FTP GD GETTEXT \
		GMP HASH ICONV IMAP INTERBASE JSON LDAP MBSTRING MCRYPT \
		MSSQL MYSQL MYSQLI \
		ODBC OPENSSL PCNTL PDF PDO PDO_MYSQL PDO_PGSQL PDO_SQLITE \
		PGSQL PHAR POSIX \
		PSPELL READLINE RECODE SESSION SHMOP SIMPLEXML SNMP SOAP \
		SOCKETS SQLITE SQLITE3 SYBASE_CT SYSVMSG SYSVSEM SYSVSHM \
		TIDY TOKENIZER WDDX XML XMLREADER XMLRPC XMLWRITER XSL \
		ZIP ZLIB

OPTIONS_DEFAULT=	CTYPE \
			DOM \
			FILTER \
			HASH \
			ICONV \
			JSON \
			PDO \
			PDO_SQLITE \
			PHAR \
			POSIX \
			SESSION \
			SIMPLEXML \
			SQLITE \
			SQLITE3 \
			TOKENIZER \
			XML \
			XMLREADER \
			XMLWRITER

BCMATH_DESC=		bc style precision math functions
BZ2_DESC=		bzip2 library support
CALENDAR_DESC=		calendar conversion support
CTYPE_DESC=		ctype functions
CURL_DESC=		CURL support
DBA_DESC=		dba support
DOM_DESC=		DOM support
EXIF_DESC=		EXIF support
FILEINFO_DESC=		fileinfo support
FILTER_DESC=		input filter support
FTP_DESC=		FTP support
GD_DESC=		GD library support
GETTEXT_DESC=		gettext library support
GMP_DESC=		GNU MP support
HASH_DESC=		HASH Message Digest Framework
ICONV_DESC=		iconv support
IMAP_DESC=		IMAP support
INTERBASE_DESC=		Interbase 6 database support (Firebird)
JSON_DESC=		JavaScript Object Serialization support
LDAP_DESC=		OpenLDAP support
MBSTRING_DESC=		multibyte string support
MCRYPT_DESC=		Encryption support
MSSQL_DESC=		MS-SQL database support
MYSQL_DESC=		MySQL database support
MYSQLI_DESC=		MySQLi database support
ODBC_DESC=		ODBC support
OPENSSL_DESC=		OpenSSL support
PCNTL_DESC=		pcntl support (CLI only)
PDF_DESC=		PDFlib support (implies GD)
PDO_DESC=		PHP Data Objects Interface (PDO)
PDO_MYSQL_DESC=		PDO MySQL driver
PDO_PGSQL_DESC=		PDO PostgreSQL driver
PDO_SQLITE_DESC=	PDO sqlite driver
PGSQL_DESC=		PostgreSQL database support
PHAR_DESC=		phar support
POSIX_DESC=		POSIX-like functions
PSPELL_DESC=		pspell support
READLINE_DESC=		readline support (CLI only)
RECODE_DESC=		recode support
SESSION_DESC=		session support
SHMOP_DESC=		shmop support
SIMPLEXML_DESC=		simplexml support
SNMP_DESC=		SNMP support
SOAP_DESC=		SOAP support
SOCKETS_DESC=		sockets support
SQLITE_DESC=		sqlite support
SQLITE3_DESC=		sqlite3 support
SYBASE_CT_DESC=		Sybase database support
SYSVMSG_DESC=		System V message support
SYSVSEM_DESC=		System V semaphore support
SYSVSHM_DESC=		System V shared memory support
TIDY_DESC=		TIDY support
TOKENIZER_DESC=		tokenizer support
WDDX_DESC=		WDDX support (implies XML)
XML_DESC=		XML support
XMLREADER_DESC=		XMLReader support
XMLRPC_DESC=		XMLRPC-EPI support
XMLWRITER_DESC=		XMLWriter support
XSL_DESC=		XSL support (Implies DOM)
ZIP_DESC=		ZIP support
ZLIB_DESC=		ZLIB support

.include <bsd.port.options.mk>

.for opt in ${OPTIONS_DEFINE}
.	if ${PORT_OPTIONS:M${opt}}
USE_PHP+=	${opt:tl}
.	endif
.endfor

do-install: build
	@${DO_NADA}

.include <bsd.port.mk>
