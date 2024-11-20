include $(TOPDIR)/rules.mk

PKG_NAME:=python-aioquic
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=aioquic
PKG_HASH:=f91263bb3f71948c5c8915b4d50ee370004f20a416f67fab3dcc90556c7e7199

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-aioquic
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=An implementation of QUIC and HTTP/3
  URL:=https://github.com/aiortc/aioquic
  DEPENDS:=+python3 +python3-certifi +python3-cryptography +python3-pyopenssl +python3-pylsqpack +python3-service-identity +libopenssl
endef

define Package/python3-aioquic/description
aioquic is a library for the QUIC network protocol in Python. It features a minimal TLS 1.3 implementation, a QUIC stack and an HTTP/3 stack.
aioquic is used by Python opensource projects such as dnspython, hypercorn, mitmproxy and the Web Platform Tests cross-browser test suite. It has also been used extensively in research papers about QUIC.
endef

$(eval $(call Py3Package,python3-aioquic))
$(eval $(call BuildPackage,python3-aioquic))
$(eval $(call BuildPackage,python3-aioquic-src))
$(eval $(call HostBuild))
