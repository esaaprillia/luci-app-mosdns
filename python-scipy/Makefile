include $(TOPDIR)/rules.mk

PKG_NAME:=python-scipy
PKG_VERSION:=1.14.1
PKG_RELEASE:=1

PYPI_NAME:=scipy
PKG_HASH:=5a275584e726026a5699459aa72f828a610821006228e841b94275c4a7c08417

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host meson-python/host python-pybind11/host python-pythran
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host meson-python/host python-pybind11/host python-pythran

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/mosdns/meson/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-scipy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fundamental algorithms for scientific computing in Python
  URL:=https://scipy.org
  DEPENDS:=+INSTALL_GFORTRAN:libgfortran +python3 +python3-numpy +openblas +python3-pooch
endef

define Package/python3-scipy/description
  SciPy (pronounced “Sigh Pie”) is an open-source software for mathematics, science, and engineering.
  It includes modules for statistics, optimization, integration, linear algebra, Fourier transforms, signal and image processing, ODE solvers
endef

ifneq ($(CONFIG_INSTALL_GFORTRAN),y)
MAKE_FLAGS += NOFORTRAN=1
endif

$(eval $(call Py3Package,python3-scipy))
$(eval $(call BuildPackage,python3-scipy))
$(eval $(call BuildPackage,python3-scipy-src))
$(eval $(call HostBuild))
