include $(TOPDIR)/rules.mk

PKG_NAME:=python-zlib-ng
PKG_VERSION:=0.5.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=zlib_ng
PKG_HASH:=32a46649e8efc21ddd74776a55366a8d8be4e3a95b93dc1f0ffe3880718990d9

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host python-versioningit/host nasm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host python-versioningit/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

PYTHON3_PKG_SETUP_VARS:= \
	PYTHON_ZLIB_NG_LINK_DYNAMIC=true

define Package/python3-zlib-ng
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Drop-in replacement for zlib and gzip modules using zlib-ng
  URL:=https://github.com/pycompression/python-zlib-ng
  DEPENDS:=+python3 +zlib-ng
endef

define Package/python3-zlib-ng/description
Faster zlib and gzip compatible compression and decompression by providing Python bindings for the zlib-ng library.

This package provides Python bindings for the zlib-ng library.

python-zlib-ng provides the bindings by offering three modules:

• zlib_ng: A drop-in replacement for the zlib module that uses zlib-ng to accelerate its performance.

• gzip_ng: A drop-in replacement for the gzip module that uses zlib_ng instead of zlib to perform its compression and checksum tasks, which improves performance.

• gzip_ng_threaded offers an open function which returns buffered read or write streams that can be used to read and write large files while escaping the GIL using one or multiple threads. This functionality only works for streaming, seeking is not supported.

zlib_ng and gzip_ng are almost fully compatible with zlib and gzip from the Python standard library. There are some minor differences see: differences-with-zlib-and-gzip-modules.
endef

$(eval $(call Py3Package,python3-zlib-ng))
$(eval $(call BuildPackage,python3-zlib-ng))
$(eval $(call BuildPackage,python3-zlib-ng-src))
$(eval $(call HostBuild))
