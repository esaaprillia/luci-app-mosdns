include $(TOPDIR)/rules.mk

PKG_NAME:=python-securetar
PKG_VERSION:=2024.11.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=securetar
PKG_HASH:=2191d8c8234777bba287a9b3e8a16cd3ec78fb52d092d1ef1b57d14c81d6838d

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cryptography/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cryptography/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-securetar
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module to handle tarfile backups.
  URL:=https://github.com/pvizeli/securetar
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-securetar/description
Secure Tarfile library
endef

$(eval $(call Py3Package,python3-securetar))
$(eval $(call BuildPackage,python3-securetar))
$(eval $(call BuildPackage,python3-securetar-src))
$(eval $(call HostBuild))
