#
# Copyright (C) 2008-2020 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=freeradius4
PKG_VERSION:=4.0~alpha1
PKG_RELEASE:=1

PKG_SOURCE:=freeradius-server-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://www.freeradius.org/ftp/pub/freeradius/
PKG_HASH:=skip

PKG_MAINTAINER:=
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYRIGHT LICENSE
PKG_CPE_ID:=cpe:/a:freeradius:freeradius

PKG_BUILD_DIR:=$(BUILD_DIR)/freeradius-server-$(PKG_VERSION)
PKG_FIXUP:=autoreconf
PYTHON3_PKG_BUILD:=0

PKG_CONFIG_DEPENDS := \
  FREERADIUS4_OPENSSL \
  FREERADIUS4_NOSSL

CFLAGS += $(FPIC)

include $(INCLUDE_DIR)/package.mk
include ../../lang/python/python3-package.mk

define Package/freeradius4/config
  source "$(SOURCE)/Config.in"
endef

define Package/freeradius4/Default
  SECTION:=net
  CATEGORY:=Network
  URL:=https://freeradius.org/
  SUBMENU:=FreeRADIUS (version 4)
endef

define Package/freeradius4
  $(call Package/freeradius4/Default)
  DEPENDS:=+freeradius4-common
  TITLE:=A flexible RADIUS server (version 4)
endef

define Package/freeradius4/conffiles
/etc/freeradius4/clients.conf
/etc/freeradius4/policy.d/accounting
/etc/freeradius4/policy.d/filter
/etc/freeradius4/proxy.conf
/etc/freeradius4/radiusd.conf
/etc/freeradius4/sites-available/default
/etc/freeradius4/sites-enabled/default
endef

define Package/freeradius4-common
  $(call Package/freeradius4/Default)
  TITLE:=common files
  DEPENDS:=+USE_GLIBC:libpthread +USE_GLIBC:libbsd +FREERADIUS4_OPENSSL:libopenssl +libcap +libpcap +libncurses +libreadline +libtalloc +libatomic
endef

define Package/freeradius4-default
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 \
+freeradius4-democerts \
+freeradius4-mod-always \
+freeradius4-mod-attr-filter \
+freeradius4-mod-chap \
+freeradius4-mod-detail \
+freeradius4-mod-digest \
+freeradius4-mod-eap \
+freeradius4-mod-eap-gtc \
+freeradius4-mod-eap-md5 \
+freeradius4-mod-eap-mschapv2 \
+freeradius4-mod-eap-peap \
+freeradius4-mod-eap-pwd \
+freeradius4-mod-eap-tls \
+freeradius4-mod-eap-ttls \
+freeradius4-mod-exec \
+freeradius4-mod-expiration \
+freeradius4-mod-expr \
+freeradius4-mod-files \
+freeradius4-mod-logintime \
+freeradius4-mod-mschap \
+freeradius4-mod-pap \
+freeradius4-mod-preprocess \
+freeradius4-mod-radutmp \
+freeradius4-mod-realm \
+freeradius4-mod-unix
  TITLE:=Modules needed for Radius default configuration
endef

define Package/freeradius4-default/description
 This meta-package contains only dependencies for modules needed in
 FreeRADIUS default configuration.
endef

define Package/freeradius4-democerts
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Demo certificates to test the server
endef

define Package/freeradius4-mod-always
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Always module
endef

define Package/freeradius4-mod-always/conffiles
/etc/freeradius4/mods-available/always
/etc/freeradius4/mods-enabled/always
endef

define Package/freeradius4-mod-attr-filter
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=ATTR filter module
endef

define Package/freeradius4-mod-attr-filter/conffiles
/etc/freeradius4/mods-available/attr_filter
/etc/freeradius4/mods-enabled/attr_filter
/etc/freeradius4/mods-config/attr_filter/access_challenge
/etc/freeradius4/mods-config/attr_filter/access_reject
/etc/freeradius4/mods-config/attr_filter/accounting_response
/etc/freeradius4/mods-config/attr_filter/coa
/etc/freeradius4/mods-config/attr_filter/post-proxy
/etc/freeradius4/mods-config/attr_filter/pre-proxy
endef

define Package/freeradius4-mod-cache
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=DATASTORE CACHE
endef

define Package/freeradius4-mod-cache/conffiles
/etc/freeradius4/mods-available/cache
endef

define Package/freeradius4-mod-cache-rbtree
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +freeradius4-mod-cache
  TITLE:=DATASTORE CACHE RBTREE
endef

define Package/freeradius4-mod-cache-redis
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +freeradius4-mod-cache +libhiredis
  TITLE:=DATASTORE CACHE REDIS
endef

define Package/freeradius4-mod-chap
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=CHAP module
endef

define Package/freeradius4-mod-chap/conffiles
/etc/freeradius4/mods-available/chap
/etc/freeradius4/mods-enabled/chap
endef

define Package/freeradius4-mod-counter
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libgdbm
  TITLE:=Module counter
endef

define Package/freeradius4-mod-counter/conffiles
/etc/freeradius4/mods-available/counter
endef

define Package/freeradius4-mod-date
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Module date
endef

define Package/freeradius4-mod-date/conffiles
/etc/freeradius4/mods-available/date
endef

define Package/freeradius4-mod-detail
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Detailed accounting module
endef

define Package/freeradius4-mod-detail/conffiles
/etc/freeradius4/mods-available/detail
/etc/freeradius4/mods-enabled/detail
endef

define Package/freeradius4-mod-digest
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=HTTP Digest Authentication
endef

define Package/freeradius4-mod-digest/conffiles
/etc/freeradius4/mods-available/digest
/etc/freeradius4/mods-enabled/digest
endef

define Package/freeradius4-mod-dpsk
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=MODULE DPSK
endef

define Package/freeradius4-mod-dpsk/conffiles
/etc/freeradius4/mods-available/dpsk
endef

define Package/freeradius4-mod-dynamic-clients
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Dynamic Clients Authentication
endef

define Package/freeradius4-mod-dynamic-clients/conffiles
/etc/freeradius4/mods-available/dynamic_clients
/etc/freeradius4/sites-available/dynamic-clients
endef

define Package/freeradius4-mod-eap
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Base EAP module
endef

define Package/freeradius4-mod-eap/conffiles
/etc/freeradius4/mods-available/eap
/etc/freeradius4/mods-enabled/eap
/etc/freeradius4/policy.d/eap
/etc/freeradius4/sites-enabled/inner-tunnel
/etc/freeradius4/sites-available/inner-tunnel
endef

define Package/freeradius4-mod-eap-fast
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap @FREERADIUS4_OPENSSL
  TITLE:=EAP/FAST module
endef

define Package/freeradius4-mod-eap-gtc
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap
  TITLE:=EAP/GTC module
endef

define Package/freeradius4-mod-eap-md5
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap
  TITLE:=EAP/MD5 module
endef

define Package/freeradius4-mod-eap-mschapv2
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap +freeradius4-mod-mschap
  TITLE:=EAP/MS-CHAPv2 module
endef

define Package/freeradius4-mod-eap-peap
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap @FREERADIUS4_OPENSSL
  TITLE:=EAP/PEAP module
endef

define Package/freeradius4-mod-eap-pwd
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap @FREERADIUS4_OPENSSL
  TITLE:=EAP/PWD module
endef

define Package/freeradius4-mod-eap-sim
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap
  TITLE:=EAP/SIM module
endef

define Package/freeradius4-mod-eap-tls
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap @FREERADIUS4_OPENSSL
  TITLE:=EAP/TLS module
endef

define Package/freeradius4-mod-eap-ttls
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-eap-tls
  TITLE:=EAP/TTLS module
endef

define Package/freeradius4-mod-exec
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=EXEC module
endef

define Package/freeradius4-mod-exec/conffiles
/etc/freeradius4/mods-available/exec
/etc/freeradius4/mods-enabled/exec
endef

define Package/freeradius4-mod-expiration
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Expiration module
endef

define Package/freeradius4-mod-expiration/conffiles
/etc/freeradius4/mods-available/expiration
/etc/freeradius4/mods-enabled/expiration
endef

define Package/freeradius4-mod-expr
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=EXPR module
endef

define Package/freeradius4-mod-expr/conffiles
/etc/freeradius4/mods-available/expr
/etc/freeradius4/mods-enabled/expr
endef

define Package/freeradius4-mod-files
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Module using local files for authorization
endef

define Package/freeradius4-mod-files/conffiles
/etc/freeradius4/mods-available/files
/etc/freeradius4/mods-enabled/files
/etc/freeradius4/mods-config/files/accounting
/etc/freeradius4/mods-config/files/authorize
/etc/freeradius4/mods-config/files/pre-proxy
endef

define Package/freeradius4-mod-ippool
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libgdbm
  TITLE:=Radius IP Pool module
endef

define Package/freeradius4-mod-ippool/conffiles
/etc/freeradius4/mods-available/ippool
endef

define Package/freeradius4-mod-json
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libjson-c
  TITLE:=Json module
endef

define Package/freeradius4-mod-json/conffiles
/etc/freeradius4/mods-available/json
endef

define Package/freeradius4-mod-krb5
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +krb5-libs
  TITLE:=Krb5 module
endef

define Package/freeradius4-mod-krb5/conffiles
/etc/freeradius4/mods-available/krb5
endef

define Package/freeradius4-mod-ldap
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libopenldap @FREERADIUS4_OPENSSL
  TITLE:=LDAP Authentication
endef

define Package/freeradius4-mod-ldap/conffiles
/etc/freeradius4/mods-available/ldap
endef

define Package/freeradius4-mod-linelog
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Linelog module
endef

define Package/freeradius4-mod-linelog/conffiles
/etc/freeradius4/mods-available/linelog
endef

define Package/freeradius4-mod-logintime
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Logintime module
endef

define Package/freeradius4-mod-logintime/conffiles
/etc/freeradius4/mods-available/logintime
/etc/freeradius4/mods-enabled/logintime
endef

define Package/freeradius4-mod-mschap
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=MS-CHAP and MS-CHAPv2 module
endef

define Package/freeradius4-mod-mschap/conffiles
/etc/freeradius4/mods-available/mschap
/etc/freeradius4/mods-enabled/mschap
endef

define Package/freeradius4-mod-pam
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libpam
  TITLE:=PAM module
endef

define Package/freeradius4-mod-pam/conffiles
/etc/freeradius4/mods-available/pam
endef

define Package/freeradius4-mod-pap
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=PAP module
endef

define Package/freeradius4-mod-pap/conffiles
/etc/freeradius4/mods-available/pap
/etc/freeradius4/mods-enabled/pap
endef

define Package/freeradius4-mod-passwd
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Rlm passwd module
endef

define Package/freeradius4-mod-passwd/conffiles
/etc/freeradius4/mods-available/passwd
/etc/freeradius4/mods-enabled/passwd
endef

define Package/freeradius4-mod-preprocess
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Request pre-processing module
endef

define Package/freeradius4-mod-preprocess/conffiles
/etc/freeradius4/mods-config/preprocess/hints
/etc/freeradius4/mods-config/preprocess/huntgroups
/etc/freeradius4/mods-available/preprocess
/etc/freeradius4/mods-enabled/preprocess
endef

define Package/freeradius4-mod-python3
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +python3
  TITLE:=Python3 module
endef

define Package/freeradius4-mod-python3/conffiles
/etc/freeradius4/mods-available/python3
endef

define Package/freeradius4-mod-radutmp
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Radius UTMP module
endef

define Package/freeradius4-mod-radutmp/conffiles
/etc/freeradius4/mods-available/radutmp
/etc/freeradius4/mods-enabled/radutmp
/etc/freeradius4/mods-available/sradutmp
/etc/freeradius4/mods-enabled/sradutmp
endef

define Package/freeradius4-mod-realm
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Realms handling module
endef

define Package/freeradius4-mod-realm/conffiles
/etc/freeradius4/mods-available/realm
/etc/freeradius4/mods-enabled/realm
endef

define Package/freeradius4-mod-redis
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libhiredis
  TITLE:=Redis module
endef

define Package/freeradius4-mod-redis/conffiles
/etc/freeradius4/mods-available/redis
endef

define Package/freeradius4-mod-rediswho
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 freeradius4-mod-redis
  TITLE:=Rediswho module
endef

define Package/freeradius4-mod-rediswho/conffiles
/etc/freeradius4/mods-available/rediswho
endef

define Package/freeradius4-mod-replicate
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Replicate module
endef

define Package/freeradius4-mod-replicate/conffiles
/etc/freeradius4/mods-available/replicate
endef

define Package/freeradius4-mod-rest
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libcurl +libjson-c
  TITLE:=Radius REST module
endef

define Package/freeradius4-mod-rest/conffiles
/etc/freeradius4/mods-available/rest
endef

define Package/freeradius4-mod-soh
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=SoH module
endef

define Package/freeradius4-mod-soh/conffiles
/etc/freeradius4/mods-available/soh
/etc/freeradius4/sites-available/soh
endef

define Package/freeradius4-mod-sometimes
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Sometimes module
endef

define Package/freeradius4-mod-sometimes/conffiles
/etc/freeradius4/mods-available/sometimes
endef

define Package/freeradius4-mod-sql
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Radius generic SQL front-end
endef

define Package/freeradius4-mod-sql/conffiles
/etc/freeradius4/mods-available/sql
endef

define Package/freeradius4-mod-sql-map
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Map module
endef

define Package/freeradius4-mod-sql-map/conffiles
/etc/freeradius4/mods-available/sql_map
endef

define Package/freeradius4-mod-sql-mysql
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-sql +libmysqlclient
  TITLE:=Radius MySQL back-end drivers
endef

define Package/freeradius4-mod-sql-mysql/conffiles
/etc/freeradius4/mods-config/sql/main/mysql
endef

define Package/freeradius4-mod-sql-null
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-sql
  TITLE:=Radius Dummy SQL back-end drivers
endef

define Package/freeradius4-mod-sql-postgresql
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-sql +libpq
  TITLE:=Radius PostgreSQL back-end drivers
endef

define Package/freeradius4-mod-sql-postgresql/conffiles
/etc/freeradius4/mods-config/sql/main/postgresql
endef

define Package/freeradius4-mod-sql-sqlite
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-sql +libsqlite3
  TITLE:=Radius SQLite back-end drivers
endef

define Package/freeradius4-mod-sql-sqlite/conffiles
/etc/freeradius4/mods-config/sql/main/sqlite
endef

define Package/freeradius4-mod-sql-unixodbc
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4-mod-sql +unixodbc
  TITLE:=Radius unixODBC back-end drivers
endef

define Package/freeradius4-mod-sqlcounter
  $(call Package/freeradius4/Default)
  DEPENDS:=+freeradius4-mod-sql
  TITLE:=Module sqlcounter
endef

define Package/freeradius4-mod-sqlcounter/conffiles
/etc/freeradius4/mods-config/sql/counter
/etc/freeradius4/mods-available/sqlcounter
endef

define Package/freeradius4-mod-sqlippool
  $(call Package/freeradius4/Default)
  DEPENDS:=+freeradius4-mod-sql
  TITLE:=Radius SQL Based IP Pool module
endef

define Package/freeradius4-mod-sqlippool/conffiles
/etc/freeradius4/mods-config/sql/ippool
/etc/freeradius4/mods-config/sql/ippool-dhcp
/etc/freeradius4/mods-available/dhcp_sqlippool
/etc/freeradius4/mods-available/sqlippool
endef

define Package/freeradius4-mod-totp
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Totp module
endef

define Package/freeradius4-mod-totp/conffiles
/etc/freeradius4/mods-available/totp
/etc/freeradius4/sites-available/totp
endef

define Package/freeradius4-mod-unbound
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libunbound
  TITLE:=Unbound module
endef

define Package/freeradius4-mod-unbound/conffiles
/etc/freeradius4/mods-available/unbound
/etc/freeradius4/mods-config/unbound
endef

define Package/freeradius4-mod-unix
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=System Authentication
endef

define Package/freeradius4-mod-unix/conffiles
/etc/freeradius4/mods-available/unix
/etc/freeradius4/mods-enabled/unix
endef

define Package/freeradius4-mod-unpack
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Unpack module
endef

define Package/freeradius4-mod-unpack/conffiles
/etc/freeradius4/mods-available/unpack
endef

define Package/freeradius4-mod-utf8
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=UTF8 module
endef

define Package/freeradius4-mod-utf8/conffiles
/etc/freeradius4/mods-available/utf8
endef

define Package/freeradius4-mod-wimax
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4
  TITLE:=Wimax Authentication
endef

define Package/freeradius4-mod-wimax/conffiles
/etc/freeradius4/mods-available/wimax
endef

define Package/freeradius4-mod-yubikey
  $(call Package/freeradius4/Default)
  DEPENDS:=freeradius4 +libyubikey +ykclient
  TITLE:=Yubikey Authentication
endef

define Package/freeradius4-mod-yubikey/conffiles
/etc/freeradius4/mods-available/yubikey
endef

define Package/freeradius4-utils
  $(call Package/freeradius4/Default)
  DEPENDS:=+freeradius4-common
  TITLE:=Misc. client utilities
endef

# This is a workaround for a bug in configure.ac, that does not check
# for the openss/rand.h header.  Setting the macro is safe for openwrt,
# and faster than rebuilding configure.
# This has been fixed upstream in the 3.0.x branch, and should not be
# needed in a future release.
EXTRA_CFLAGS+= -DHAVE_OPENSSL_RAND_H

CONFIGURE_ARGS+= \
	--libdir=/usr/lib/freeradius4 \
	--libexecdir=/usr/lib/freeradius4 \
	--disable-developer \
	--with-threads \
	$(if $(CONFIG_FREERADIUS4_OPENSSL),--with,--without)-openssl \
	$(if $(CONFIG_FREERADIUS4_OPENSSL),--with-openssl-includes="$(STAGING_DIR)/usr/include",) \
	$(if $(CONFIG_FREERADIUS4_OPENSSL),--with-openssl-libraries="$(STAGING_DIR)/usr/lib",) \
	$(if $(CONFIG_FREERADIUS4_OPENSSL),--disable-openssl-version-check,) \
	--with-talloc-include-dir="$(STAGING_DIR)/usr/include" \
	--with-talloc-lib-dir="$(STAGING_DIR)/usr/lib" \
	--enable-strict-dependencies \
	--with-dictdir=/usr/share/freeradius4 \
	--with-raddbdir=/etc/freeradius4 \
	--with-radacctdir=/var/db/radacct \
	--with-logdir=/var/log \
	--without-pcre \
	--without-rlm_cache_memcached \
	--without-rlm_couchbase \
	--without-rlm_eap_ikev2 \
	--without-rlm_eap_tnc \
	--without-rlm_perl \
	--without-rlm_python \
	--without-rlm_sql_db2 \
	--without-rlm_sql_firebird \
	--without-rlm_sql_freetds \
	--without-rlm_sql_iodbc \
	--without-rlm_sql_oracle \

CONFIGURE_LIBS+= -latomic

PKG_DICTIONARIES:= \
	compat \
	freeradius freeradius.internal \
	rfc2865 rfc2866 rfc2867 rfc2868 rfc2869 rfc3162 rfc3576 rfc3580 \
	rfc4072 rfc4372 rfc4675 rfc4679 rfc5580 rfc6911 \
	microsoft \
	wispr \

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-cache-redis),)
  CONFIGURE_ARGS+= \
		--with-rlm_cache_redis \
		--with-rlm_cache_redis-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_cache_redis-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_cache_redis
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-eap-fast),)
  CONFIGURE_ARGS+= \
		--with-rlm_eap_fast \
		--with-rlm_eap_fast-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_eap_fast-lib-dir="$(STAGING_DIR)/usr/lib"
  CONFIGURE_LIBS+= -lcrypto -lssl
else
  CONFIGURE_ARGS+= --without-rlm_eap_fast
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-eap-peap),)
  CONFIGURE_ARGS+= \
		--with-rlm_eap_peap \
		--with-rlm_eap_peap-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_eap_peap-lib-dir="$(STAGING_DIR)/usr/lib"
  CONFIGURE_LIBS+= -lcrypto -lssl
else
  CONFIGURE_ARGS+= --without-rlm_eap_peap
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-eap-pwd),)
  CONFIGURE_ARGS+= \
		--with-rlm_eap_pwd \
		--with-rlm_eap_pwd-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_eap_pwd-lib-dir="$(STAGING_DIR)/usr/lib"
  CONFIGURE_LIBS+= -lcrypto -lssl
else
  CONFIGURE_ARGS+= --without-rlm_eap_pwd
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-eap-tls),)
  CONFIGURE_ARGS+= \
		--with-rlm_eap_tls \
		--with-rlm_eap_tls-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_eap_tls-lib-dir="$(STAGING_DIR)/usr/lib"
  CONFIGURE_LIBS+= -lcrypto -lssl
else
  CONFIGURE_ARGS+= --without-rlm_eap_tls
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-eap-ttls),)
  CONFIGURE_ARGS+= \
		--with-rlm_eap_ttls \
		--with-rlm_eap_ttls-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_eap_ttls-lib-dir="$(STAGING_DIR)/usr/lib"
  CONFIGURE_LIBS+= -lcrypto -lssl
else
  CONFIGURE_ARGS+= --without-rlm_eap_ttls
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-ippool),)
  CONFIGURE_ARGS+= --with-rlm_ippool \
		--with-rlm_ippool-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_ippool-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_ippool
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-json),)
  CONFIGURE_ARGS+= --with-rlm_json \
		--with-rlm_json-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_json-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_json
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-krb5),)
  CONFIGURE_ARGS+= \
		--with-rlm_krb5 \
		--with-rlm-krb5-dir="$(STAGING_DIR)/host/bin/krb5-config"
else
  CONFIGURE_ARGS+= --without-rlm_krb5
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-ldap),)
  CONFIGURE_ARGS+= --with-rlm_ldap \
		--with-rlm_ldap-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_ldap-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_ldap
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-python3),)
  CFLAGS+= -fPIC
  CONFIGURE_ARGS+= \
		--with-modules="rlm_python3" \
		--with-rlm-python3-config-bin="$(STAGING_DIR)/host/bin/python$(PYTHON3_VERSION)-config"
else
  CONFIGURE_ARGS+= --without-rlm_python3
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-radutmp),)
  CONFIGURE_ARGS+= --with-rlm_radutmp
else
  CONFIGURE_ARGS+= --without-rlm_radutmp
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-redis),)
  CONFIGURE_ARGS+= \
		--with-rlm_redis \
		--with-rlm_redis-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_redis-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_redis
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-rediswho),)
  CONFIGURE_ARGS+= \
		--with-rlm_rediswho \
		--with-rlm_rediswho-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_rediswho-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_rediswho
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-rest),)
  CONFIGURE_ARGS+= --with-rlm_rest
else
  CONFIGURE_ARGS+= --without-rlm_rest
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-sql),)
  CONFIGURE_ARGS+= --with-rlm_sql
else
  CONFIGURE_ARGS+= --without-rlm_sql
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-sql-mysql),)
  CONFIGURE_ARGS+= \
		--with-rlm_sql_mysql \
		--with-mysql-include-dir="$(STAGING_DIR)/usr/include/mysql"
else
  CONFIGURE_ARGS+= --without-rlm_sql_mysql
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-sql-postgresql),)
  CONFIGURE_ARGS+= --with-rlm_sql_postgresql
else
  CONFIGURE_ARGS+= --without-rlm_sql_postgresql
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-sql-sqlite),)
  CONFIGURE_ARGS+= --with-rlm_sql_sqlite
else
  CONFIGURE_ARGS+= --without-rlm_sql_sqlite
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-unixodbc),)
  CONFIGURE_ARGS+= \
		--with-rlm_sql_unixodbc \
		--with-rlm_sql_unixodbc-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_sql_unixodbc-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_sql_unixodbc
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-sqlcounter),)
  CONFIGURE_ARGS+= --with-rlm_sqlcounter
else
  CONFIGURE_ARGS+= --without-rlm_sqlcounter
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-sqlippool),)
  CONFIGURE_ARGS+= --with-rlm_sqlippool
else
  CONFIGURE_ARGS+= --without-rlm_sqlippool
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-unbound),)
  CONFIGURE_ARGS+= \
		--with-rlm_unbound \
		--with-rlm_unbound-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_unbound-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_unbound
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-unix),)
  CONFIGURE_ARGS+= --with-rlm_unix
else
  CONFIGURE_ARGS+= --without-rlm_unix
endif

ifneq ($(SDK)$(CONFIG_PACKAGE_freeradius4-mod-yubikey),)
  CONFIGURE_ARGS+= \
		--with-rlm_yubikey \
		--with-rlm_yubikey-include-dir="$(STAGING_DIR)/usr/include" \
		--with-rlm_yubikey-lib-dir="$(STAGING_DIR)/usr/lib"
else
  CONFIGURE_ARGS+= --without-rlm_yubikey
endif

ifeq ($(CONFIG_USE_GLIBC),y)
  TARGET_CFLAGS+= -DLIBBSD_OVERLAY -I$(STAGING_DIR)/usr/include/bsd \
	-D_RPC_NETDB_H
	#^^^^^^^^^^^^^ avoid inclusion of librpc's netdb.h
  CONFIGURE_LIBS+= -Wl,--push-state,--as-needed -lbsd -Wl,--pop-state
endif

CONFIGURE_VARS+= \
	LDFLAGS="$$$$LDFLAGS" \
	LIBS="$(CONFIGURE_LIBS)" \
	MYSQL_CONFIG="no" \
	vl_cv_lib_readline=no \
	ax_cv_cc_builtin_choose_expr=yes \
	ax_cv_cc_builtin_types_compatible_p=yes ax_cv_cc_builtin_bswap64=yes \
	ax_cv_cc_bounded_attribute=no \
	ac_cv_lib_collectdclient_lcc_connect=no \
	ac_cv_lib_execinfo_backtrace_symbols=no

define Build/Compile
	# Compile jlibtool for the host once the configuration is done
	(cd $(PKG_BUILD_DIR); \
		mkdir -p build/make; \
		$(HOSTCC) $(HOST_CFLAGS) scripts/jlibtool.c -o build/make/jlibtool; \
	)
	$(MAKE) -C $(PKG_BUILD_DIR) \
		R="$(PKG_INSTALL_DIR)" \
		INSTALLSTRIP="" \
		all install
endef

define Package/freeradius4-common/install
	$(INSTALL_DIR) $(1)/etc/freeradius4
	chmod 771 $(1)/etc/freeradius4
	$(CP) $(PKG_INSTALL_DIR)/etc/freeradius4/dictionary $(1)/etc/freeradius4/ ; \
	$(INSTALL_DIR) $(1)/usr/lib/freeradius4
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/freeradius4/libfreeradius-{dhcp,eap,radius,server}.so $(1)/usr/lib/freeradius4
	$(INSTALL_DIR) $(1)/usr/share/freeradius4
	$(CP) $(PKG_INSTALL_DIR)/usr/share/freeradius4/dictionary $(1)/usr/share/freeradius4/
	$(SED) "s,^\(\$$$$INCLUDE\),#\1,g" $(1)/usr/share/freeradius4/dictionary
	for f in $(PKG_DICTIONARIES); do \
		$(CP) $(PKG_INSTALL_DIR)/usr/share/freeradius4/dictionary.$$$${f} $(1)/usr/share/freeradius4/ ; \
		$(SED) "s,^#\(\$$$$INCLUDE dictionary\.$$$${f}\)$$$$,\1,g" $(1)/usr/share/freeradius4/dictionary ; \
	done
endef

define Package/freeradius4/install
	$(INSTALL_DIR) $(1)/etc/freeradius4
	$(INSTALL_DIR) $(1)/etc/freeradius4/policy.d
	$(INSTALL_DIR) $(1)/etc/freeradius4/sites-available
	$(INSTALL_DIR) $(1)/etc/freeradius4/sites-enabled
	for f in clients.conf radiusd.conf proxy.conf; do \
		$(CP) $(PKG_INSTALL_DIR)/etc/freeradius4/$$$${f} $(1)/etc/freeradius4/ ; \
	done
	for f in accounting filter; do \
		$(CP) $(PKG_INSTALL_DIR)/etc/freeradius4/policy.d/$$$${f} $(1)/etc/freeradius4/policy.d/ ; \
	done
	for f in default; do \
		$(CP) $(PKG_INSTALL_DIR)/etc/freeradius4/sites-available/$$$${f} $(1)/etc/freeradius4/sites-available/ ; \
		$(CP) $(PKG_INSTALL_DIR)/etc/freeradius4/sites-enabled/$$$${f} $(1)/etc/freeradius4/sites-enabled/ ; \
	done

	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/radiusd $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/radiusd.init $(1)/etc/init.d/radiusd
endef

define Package/freeradius4-default/install
	true
endef

define Package/freeradius4-democerts/install
	$(INSTALL_DIR) $(1)/etc/freeradius4/certs
	$(CP) \
		$(PKG_INSTALL_DIR)/etc/freeradius4/certs/ca.pem \
		$(PKG_INSTALL_DIR)/etc/freeradius4/certs/server.pem \
		$(1)/etc/freeradius4/certs/
endef

define Package/freeradius4-utils/install
	$(INSTALL_DIR) $(1)/usr/bin
	for f in radclient radeapclient radtest radwho; do \
		$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/$$$${f} $(1)/usr/bin/ ; \
	done
endef

define BuildPlugin
  define Package/$(1)/install
	[ -z "$(2)" ] || $(INSTALL_DIR) $$(1)/usr/lib/freeradius4
	for m in $(2); do \
		$(CP) $(PKG_INSTALL_DIR)/usr/lib/freeradius4/$$$$$$$${m}.so $$(1)/usr/lib/freeradius4 ; \
	done
	# Install configuration files
	for f in $(strip $(call Package/$(1)/conffiles)); do \
		$(INSTALL_DIR) $$(1)/$$$$$$$${f%/*} ; \
		$(CP) $(PKG_INSTALL_DIR)/$$$$$$$${f} $$(1)/$$$$$$$${f}; \
	done
  endef

  $$(eval $$(call BuildPackage,$(1)))
endef


$(eval $(call BuildPackage,freeradius4))
$(eval $(call BuildPackage,freeradius4-common))
$(eval $(call BuildPackage,freeradius4-default))
$(eval $(call BuildPackage,freeradius4-democerts))
$(eval $(call BuildPlugin,freeradius4-mod-always,rlm_always,))
$(eval $(call BuildPlugin,freeradius4-mod-attr-filter,rlm_attr_filter,))
$(eval $(call BuildPlugin,freeradius4-mod-cache,rlm_cache,))
$(eval $(call BuildPlugin,freeradius4-mod-cache-rbtree,rlm_cache_rbtree,))
$(eval $(call BuildPlugin,freeradius4-mod-cache-redis,rlm_cache_redis,))
$(eval $(call BuildPlugin,freeradius4-mod-chap,rlm_chap,))
$(eval $(call BuildPlugin,freeradius4-mod-counter,rlm_counter,))
$(eval $(call BuildPlugin,freeradius4-mod-date,rlm_date,))
$(eval $(call BuildPlugin,freeradius4-mod-detail,rlm_detail,))
$(eval $(call BuildPlugin,freeradius4-mod-digest,rlm_digest,))
$(eval $(call BuildPlugin,freeradius4-mod-dpsk,rlm_dpsk,))
$(eval $(call BuildPlugin,freeradius4-mod-dynamic-clients,rlm_dynamic_clients,))
$(eval $(call BuildPlugin,freeradius4-mod-eap,rlm_eap,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-fast,rlm_eap_fast,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-gtc,rlm_eap_gtc,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-md5,rlm_eap_md5,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-mschapv2,rlm_eap_mschapv2,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-peap,rlm_eap_peap,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-pwd,rlm_eap_pwd,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-sim,rlm_eap_sim,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-tls,rlm_eap_tls,))
$(eval $(call BuildPlugin,freeradius4-mod-eap-ttls,rlm_eap_ttls,))
$(eval $(call BuildPlugin,freeradius4-mod-exec,rlm_exec,))
$(eval $(call BuildPlugin,freeradius4-mod-expiration,rlm_expiration,))
$(eval $(call BuildPlugin,freeradius4-mod-expr,rlm_expr,))
$(eval $(call BuildPlugin,freeradius4-mod-files,rlm_files,))
$(eval $(call BuildPlugin,freeradius4-mod-ippool,rlm_ippool,))
$(eval $(call BuildPlugin,freeradius4-mod-json,rlm_json,))
$(eval $(call BuildPlugin,freeradius4-mod-krb5,rlm_krb5,))
$(eval $(call BuildPlugin,freeradius4-mod-ldap,rlm_ldap,))
$(eval $(call BuildPlugin,freeradius4-mod-linelog,rlm_linelog,))
$(eval $(call BuildPlugin,freeradius4-mod-logintime,rlm_logintime,))
$(eval $(call BuildPlugin,freeradius4-mod-mschap,rlm_mschap,))
$(eval $(call BuildPlugin,freeradius4-mod-pam,rlm_pam,))
$(eval $(call BuildPlugin,freeradius4-mod-pap,rlm_pap,))
$(eval $(call BuildPlugin,freeradius4-mod-passwd,rlm_passwd,))
$(eval $(call BuildPlugin,freeradius4-mod-preprocess,rlm_preprocess,))
$(eval $(call BuildPlugin,freeradius4-mod-python3,rlm_python3,))
$(eval $(call BuildPlugin,freeradius4-mod-radutmp,rlm_radutmp,))
$(eval $(call BuildPlugin,freeradius4-mod-realm,rlm_realm,))
$(eval $(call BuildPlugin,freeradius4-mod-redis,rlm_redis,))
$(eval $(call BuildPlugin,freeradius4-mod-rediswho,rlm_rediswho,))
$(eval $(call BuildPlugin,freeradius4-mod-replicate,rlm_replicate,))
$(eval $(call BuildPlugin,freeradius4-mod-rest,rlm_rest,))
$(eval $(call BuildPlugin,freeradius4-mod-soh,rlm_soh,))
$(eval $(call BuildPlugin,freeradius4-mod-sometimes,rlm_sometimes,))
$(eval $(call BuildPlugin,freeradius4-mod-sql,rlm_sql,))
$(eval $(call BuildPlugin,freeradius4-mod-sql-map,rlm_sql_map,))
$(eval $(call BuildPlugin,freeradius4-mod-sql-mysql,rlm_sql_mysql,))
$(eval $(call BuildPlugin,freeradius4-mod-sql-null,rlm_sql_null,))
$(eval $(call BuildPlugin,freeradius4-mod-sql-postgresql,rlm_sql_postgresql,))
$(eval $(call BuildPlugin,freeradius4-mod-sql-sqlite,rlm_sql_sqlite,))
$(eval $(call BuildPlugin,freeradius4-mod-sql-unixodbc,rlm_sql_unixodbc,))
$(eval $(call BuildPlugin,freeradius4-mod-sqlcounter,rlm_sqlcounter,))
$(eval $(call BuildPlugin,freeradius4-mod-sqlippool,rlm_sqlippool,))
$(eval $(call BuildPlugin,freeradius4-mod-totp,rlm_totp,))
$(eval $(call BuildPlugin,freeradius4-mod-unbound,rlm_unbound,))
$(eval $(call BuildPlugin,freeradius4-mod-unix,rlm_unix,))
$(eval $(call BuildPlugin,freeradius4-mod-unpack,rlm_unpack,))
$(eval $(call BuildPlugin,freeradius4-mod-utf8,rlm_utf8,))
$(eval $(call BuildPlugin,freeradius4-mod-wimax,rlm_wimax,))
$(eval $(call BuildPlugin,freeradius4-mod-yubikey,rlm_yubikey,))
$(eval $(call BuildPackage,freeradius4-utils))
