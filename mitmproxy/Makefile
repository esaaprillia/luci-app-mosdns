include $(TOPDIR)/rules.mk

PKG_NAME:=mitmproxy
PKG_VERSION:=11.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mitmproxy/mitmproxy/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/mitmproxy
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An interactive TLS-capable intercepting HTTP proxy for penetration testers and software developers.
  URL:=https://github.com/mitmproxy/mitmproxy
  DEPENDS:=+python3-aioquic +python3-asgiref +python3-brotli +python3-certifi +python3-cryptography +python3-flask +python3-h11 +python3-h2 +python3-hyperframe +python3-kaitaistruct +python3-ldap3 +python3-mitmproxy-rs +python3-msgpack +python3-passlib +python3-protobuf +python3-pyopenssl +python3-pyparsing +python3-pyperclip +python3-ruamel-yaml +python3-sortedcontainers +python3-tornado +python3-urwid +python3-wsproto +python3-publicsuffix2 +python3-zstandard
endef

define Package/mitmproxy/description
mitmproxy is an interactive, SSL/TLS-capable intercepting proxy with a console interface for HTTP/1, HTTP/2, and WebSockets.
mitmdump is the command-line version of mitmproxy. Think tcpdump for HTTP.
mitmweb is a web-based interface for mitmproxy.
endef

PYTHON3_PKG_WHEEL_NAME:=mitmproxy
PYTHON3_PKG_WHEEL_VERSION:=11.0.0

$(eval $(call Py3Package,mitmproxy))
$(eval $(call BuildPackage,mitmproxy))
$(eval $(call BuildPackage,mitmproxy-src))
$(eval $(call HostBuild))
