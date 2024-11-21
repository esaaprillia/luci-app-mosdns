include $(TOPDIR)/rules.mk

PKG_NAME:=python-fonttools
PKG_VERSION:=4.53.1
PKG_RELEASE:=1

PYPI_NAME:=fonttools
PKG_HASH:=e128778a8e9bc11159ce5447f76766cefbd876f44bd79aff030287254e4752c4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE LICENSE.external

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-fonttools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools to manipulate font files
  URL:=https://github.com/fonttools/fonttools
  DEPENDS:=+python3
endef

define Package/python3-fonttools/description
  fontTools is a library for manipulating fonts, written in Python.
  The project includes the TTX tool, that can convert TrueType and OpenType fonts to and from an XML text format, which is also called TTX.
  It supports TrueType, OpenType, AFM and to an extent Type 1 and some Mac-specific formats.
endef

$(eval $(call Py3Package,python3-fonttools))
$(eval $(call BuildPackage,python3-fonttools))
$(eval $(call BuildPackage,python3-fonttools-src))
$(eval $(call HostBuild))
