include $(TOPDIR)/rules.mk

PKG_NAME:=python-json-stream
PKG_VERSION:=2.3.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=json-stream
PKG_HASH:=b8b450ea8e8e3c239e9e7e38d12fed934e77a353c14b297f8ee345a5ceb25b91

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools-rust/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools-rust/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-json-stream
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Streaming JSON encoder and decoder
  URL:=https://github.com/daggaz/json-stream
  DEPENDS:=+python3 +python3-json-stream-rs-tokenizer
endef

define Package/python3-json-stream/description
Simple streaming JSON parser and encoder.
When reading JSON data, json-stream can decode JSON data in a streaming manner, providing a pythonic dict/list-like interface, or a visitor-based interfeace. Can stream from files, URLs or iterators.
When writing JSON data, json-stream can stream JSON objects as you generate them.
These techniques allow you to reduce memory consumption and latency.
endef

$(eval $(call Py3Package,python3-json-stream))
$(eval $(call BuildPackage,python3-json-stream))
$(eval $(call BuildPackage,python3-json-stream-src))
$(eval $(call HostBuild))
