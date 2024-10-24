include $(TOPDIR)/rules.mk

PKG_NAME:=python-matplotlib
PKG_VERSION:=3.8.4
PKG_RELEASE:=1

PYPI_NAME:=matplotlib
PKG_HASH:=8aac397d5e9ec158960e31c381c5ffc52ddd52bd9a47717e2a694038167dffea

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LICENSE
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host python-pybind11/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host python-pybind11/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-matplotlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=matplotlib plotting with Python
  URL:=matplotlib.org/stable/
  DEPENDS:=+python3 +python3-numpy +python3-cairo +python3-certifi +python3-contourpy +python3-cycler +python3-dateutil +python3-fonttools +python3-kiwisolver +python3-packaging +python3-parsing +python3-pytz +libfreetype +qhull
endef

define Package/python3-matplotlib/description
  Matplotlib is a comprehensive library for creating static, animated, and interactive visualizations in Python.
endef

$(eval $(call Py3Package,python3-matplotlib))
$(eval $(call BuildPackage,python3-matplotlib))
$(eval $(call BuildPackage,python3-matplotlib-src))
$(eval $(call HostBuild))
