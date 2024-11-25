include $(TOPDIR)/rules.mk

PKG_NAME:=tinytuya
PKG_VERSION:=1.15.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/jasonacox/tinytuya/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/tinytuya
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python API for Tuya WiFi smart devices using a direct local area network (LAN) connection or the cloud (TuyaCloud API).
  URL:=https://github.com/jasonacox/tinytuya
  DEPENDS:=+python3-cryptography +python3-requests +python3-colorama
endef

define Package/tinytuya/description
This python module controls and reads state of Tuya compatible WiFi Smart Devices (Plugs, Switches, Lights, Window Covers, etc.) using the local area network (LAN) or the cloud (TuyaCloud API).
This is a compatible replacement for the pytuya PyPI module and currently supports Tuya Protocols 3.1, 3.2, 3.3, 3.4 and 3.5.
Tuya devices are designed to communicate with the TuyaCloud but most also expose a local area network API.
This allows us to directly control the devices without using the cloud. This python module provides a way to poll status and issue commands to these devices.
endef

PYTHON3_PKG_WHEEL_NAME:=tinytuya
PYTHON3_PKG_WHEEL_VERSION:=1.15.1

$(eval $(call Py3Package,tinytuya))
$(eval $(call BuildPackage,tinytuya))
$(eval $(call BuildPackage,tinytuya-src))
$(eval $(call HostBuild))
