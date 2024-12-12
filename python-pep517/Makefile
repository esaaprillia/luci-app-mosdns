include $(TOPDIR)/rules.mk

PKG_NAME:=python-pep517
PKG_VERSION:=0.13.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pep517
PKG_HASH:=1b2fa2ffd3938bb4beffe5d6146cbcb2bda996a5a4da9f31abffd8b24e07b317

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-flit-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-flit-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pep517
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Wrappers to build Python packages using PEP 517 hooks
  URL:=https://pyproject-hooks.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-pep517/description
The core of this package has been renamed to pyproject-hooks. Please use that package (low level) or build (higher level) in place of pep517.

PEP 517 specifies a standard API for systems which build Python packages.

PEP 660 extends it with a build mode that leads to editable installs.
endef

$(eval $(call Py3Package,python3-pep517))
$(eval $(call BuildPackage,python3-pep517))
$(eval $(call BuildPackage,python3-pep517-src))
$(eval $(call HostBuild))
