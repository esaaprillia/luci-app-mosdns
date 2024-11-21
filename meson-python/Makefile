include $(TOPDIR)/rules.mk

PKG_NAME:=meson-python
PKG_VERSION:=0.17.1
PKG_RELEASE:=1

PYPI_NAME:=meson_python
PKG_HASH:=efb91f69f2e19eef7bc9a471ed2a4e730088cc6b39eacaf3e49fc4f930eb5f83

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host pyproject-metadata/host meson/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host pyproject-metadata/host meson/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/meson-python
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Meson Python build backend (PEP 517)
  URL:=https://github.com/mesonbuild/meson-python
  DEPENDS:=+python3
endef

define Package/meson-python/description
  meson-python is a Python build back-end built on top of the Meson build system.
  It enables using Meson for the configuration and build steps of Python packages.
  Meson is an open source build system meant to be both extremely fast, and, even more importantly, as user friendly as possible.
  meson-python is best suited for building Python packages containing extension modules implemented in languages such as C, C++, Cython, Fortran, Pythran, or Rust. Consult the documentation for more details.
endef

$(eval $(call Py3Package,meson-python))
$(eval $(call BuildPackage,meson-python))
$(eval $(call BuildPackage,meson-python-src))
$(eval $(call HostBuild))
