include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-mosdns
PKG_VERSION:=1037
PKG_RELEASE:=1
PKG_LICENSE:=GPL-2.0

PKG_MAINTAINER:=

#PKG_BUILD_DEPENDS:=python-tzdata/host
PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-mosdns
  SECTION:=net
  CATEGORY:=Network
  #DEPENDS:=perl perl-html-tagset perl-net-dns perl-ack perl-html-tree perl-net-http perl-authen-sasl perl-http-cookies perl-net-telnet perl-authen-sasl-xs perl-http-daemon perl-parse-recdescent perl-cgi perl-http-date perl-parse-yapp perl-compress-bzip2 perl-http-message perl-sub-uplevel perl-dbi perl-http-negotiate perl-test-harness perl-device-serialport perl-http-server-simple perl-test-warn perl-device-usb perl-inline perl-text-csv_xs perl-encode-locale perl-inline-c perl-try-tiny perl-file-listing perl-io-html perl-uri perl-file-next perl-lockfile-simple perl-www perl-file-rsyncp perl-lwp-mediatypes perl-www-curl perl-file-sharedir-install perl-mail-spamassassin perl-www-mechanize perl-html-form perl-netaddr-ip perl-www-robotrules perl-html-parser perl-net-cidr-lite perl-xml-parser
  #DEPENDS:=perl perl-html-tree perl-netaddr-ip perl-ack perl-http-cookies perl-parse-recdescent perl-authen-sasl perl-http-daemon perl-parse-yapp perl-authen-sasl-xs perl-http-date perl-sub-uplevel perl-cgi perl-http-message perl-test-harness perl-compress-bzip2 perl-http-negotiate perl-test-warn perl-dbi perl-http-server-simple perl-text-csv_xs perl-device-serialport perl-inline perl-time-moment perl-device-usb perl-inline-c perl-try-tiny perl-encode-locale perl-io-html perl-uri perl-file-listing perl-lockfile-simple perl-www perl-file-next perl-lwp-mediatypes perl-www-curl perl-file-rsyncp spamassassin spamc spamc-ssl perl-www-mechanize perl-file-sharedir-install perl-net-cidr-lite perl-www-robotrules perl-html-form perl-net-dns perl-xml-parser perl-html-parser perl-net-http perl-html-tagset perl-net-telnet
  #DEPENDS:=php7 php7-pecl-dio php7-pecl-http php7-pecl-imagick php7-pecl-krb5 php7-pecl-libevent php7-pecl-mcrypt php7-pecl-propro php7-pecl-raphf php7-pecl-redis freeradius3 mysql-server pear pear-db pear-archive-tar pear-structures-graph pear-console-getopt pear-xml-util pear-xmlrpc
  #DEPENDS:=freeradius3 mysql-server pear pear-db pear-archive-tar pear-structures-graph pear-console-getopt pear-xml-util pear-xmlrpc
  #DEPENDS:=python3-protobuf python3-pyperclip python3-ruamel-yaml python3-sortedcontainers python3-tornado python3-urwid python3-wsproto python3-publicsuffix2 python3-zstandard
  DEPENDS:=liblzf
  TITLE:=Tools Inject xderm-mini
endef

define Package/luci-app-mosdns/description
 xderm-mini ssh v2ray trojan
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/luci-app-mosdns/install
endef

$(eval $(call BuildPackage,luci-app-mosdns))
