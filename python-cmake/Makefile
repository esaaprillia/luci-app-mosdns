include $(TOPDIR)/rules.mk

PKG_NAME:=python-cmake
PKG_VERSION:=3.31.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE_Apache_20 LICENSE_BSD_3

PYPI_NAME:=cmake
PKG_HASH:=45e09ef6fc5a0d3d4cac11bfee43ba3f9925f301660630d3d1e5457fbe12ecdf

HOST_BUILD_DEPENDS:=python-setuptools-scm/host scikit-build-core/host python-hatch-fancy-pypi-readme/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host scikit-build-core/host python-hatch-fancy-pypi-readme/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-cmake
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=CMake is an open-source, cross-platform family of tools designed to build, test and package software
  URL:=https://cmake-python-distributions.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-cmake/description
CMake is used to control the software compilation process using simple platform and compiler independent configuration files, and generate native makefiles and workspaces that can be used in the compiler environment of your choice.
The suite of CMake tools were created by Kitware in response to the need for a powerful, cross-platform build environment for open-source projects such as ITK and VTK.
endef

$(eval $(call Py3Package,python3-cmake))
$(eval $(call BuildPackage,python3-cmake))
$(eval $(call BuildPackage,python3-cmake-src))
$(eval $(call HostBuild))
