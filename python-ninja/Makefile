include $(TOPDIR)/rules.mk

PKG_NAME:=python-ninja
PKG_VERSION:=1.11.1.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE_Apache_20

PYPI_NAME:=ninja
PKG_HASH:=4fbd07b2b4232543726abafdd350453a2fabef4527664ca0e491c578aee5f857

HOST_BUILD_DEPENDS:=python-setuptools-scm/host scikit-build-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host scikit-build-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-ninja
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Ninja is a small build system with a focus on speed
  URL:=https://github.com/scikit-build/ninja-python-distributions
  DEPENDS:=+python3
endef

define Package/python3-ninja/description
Ninja is a small build system with a focus on speed.
The latest Ninja python wheels provide ninja 1.11.1.g95dee.kitware.jobserver-1 executable and ninja_syntax.py for generating .ninja files.
endef

$(eval $(call Py3Package,python3-ninja))
$(eval $(call BuildPackage,python3-ninja))
$(eval $(call BuildPackage,python3-ninja-src))
$(eval $(call HostBuild))
