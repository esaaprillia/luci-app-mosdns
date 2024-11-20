include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyftdi
PKG_VERSION:=0.55.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyftdi
PKG_HASH:=cb2770b606507024a65e0a520bf892f239a36cec25cab45338ce3e3027de53c8

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyftdi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=FTDI device driver (pure Python)
  URL:=https://github.com/eblot/pyftdi
  DEPENDS:=+python3 +python3-pyusb +python3-pyserial
endef

define Package/python3-pyftdi/description
PyFtdi aims at providing a user-space driver for popular FTDI devices, implemented in pure Python language.
endef

$(eval $(call Py3Package,python3-pyftdi))
$(eval $(call BuildPackage,python3-pyftdi))
$(eval $(call BuildPackage,python3-pyftdi-src))
$(eval $(call HostBuild))
