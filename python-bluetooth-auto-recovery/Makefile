include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluetooth-auto-recovery
PKG_VERSION:=1.4.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=bluetooth_auto_recovery
PKG_HASH:=7146bacf1864b07c6ef0ed989b8e7784aa5597426a80c05735558f72b255b7d8

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-bluetooth-auto-recovery
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Recover bluetooth adapters that are in an stuck state
  URL:=https://github.com/bluetooth-devices/bluetooth-auto-recovery
  DEPENDS:=+python3 +python3-bluetooth-adapters +python3-btsocket +python3-pyric +python3-usb-devices
endef

define Package/python3-bluetooth-auto-recovery/description
Recover bluetooth adapters that are in an stuck state
endef

$(eval $(call Py3Package,python3-bluetooth-auto-recovery))
$(eval $(call BuildPackage,python3-bluetooth-auto-recovery))
$(eval $(call BuildPackage,python3-bluetooth-auto-recovery-src))
$(eval $(call HostBuild))
