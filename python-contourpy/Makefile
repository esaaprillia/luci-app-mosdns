include $(TOPDIR)/rules.mk

PKG_NAME:=python-contourpy
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=contourpy
PKG_HASH:=7ffa0db17717a8ffb127efd0c95a4362d996b892c2904db72428d5b52e1938a4

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-pybind11/host meson/host meson-python/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-pybind11/host meson/host meson-python/host python-pytest

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/mosdns/meson/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-contourpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for calculating contours of 2D quadrilateral grids
  URL:=https://github.com/contourpy/contourpy
  DEPENDS:=+python3 +python3-numpy +meson +meson-python
endef

define Package/python3-contourpy/description
  ContourPy is a Python library for calculating contours of 2D quadrilateral grids.
  It is written in C++11 and wrapped using pybind11.
endef

$(eval $(call Py3Package,python3-contourpy))
$(eval $(call BuildPackage,python3-contourpy))
$(eval $(call BuildPackage,python3-contourpy-src))
$(eval $(call HostBuild))
