include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluepy
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PYPI_NAME:=bluepy
PKG_HASH:=2a71edafe103565fb990256ff3624c1653036a837dfc90e1e32b839f83971cec

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluepy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python module for interfacing with BLE devices through Bluez
  URL:=https://github.com/IanHarvey/bluepy
  DEPENDS:=+python3 +glib2 +bluez-libs
endef

define Package/python3-bluepy/description
  This is a project to provide an API to allow access to Bluetooth Low Energy devices from Python. At present it runs on Linux only; I've mostly developed it using a Raspberry Pi, but it will also run on x86 Debian Linux.
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)/bluepy \
		LINUX="$(LINUX_DIR)" \
		CC="$(TARGET_CC)" \
		STAGING_DIR="$(STAGING_DIR)" \
		LDFLAGS="$(TARGET_LDFLAGS)" \
		CFLAGS="$(TARGET_CFLAGS)"
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Py3Build/Install)
endef

$(eval $(call Py3Package,python3-bluepy))
$(eval $(call BuildPackage,python3-bluepy))
$(eval $(call BuildPackage,python3-bluepy-src))
$(eval $(call HostBuild))
