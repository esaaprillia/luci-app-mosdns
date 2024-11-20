include $(TOPDIR)/rules.mk

PKG_NAME:=python-udmx-pyusb
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=udmx-pyusb
PKG_HASH:=3ed45facbbab6c49d6218a04eb44377b21022415f79cce9e271d489ed6d7c263

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-udmx-pyusb
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=uDMX Interface Library
  URL:=https://github.com/dhocker/udmx-pyusb
  DEPENDS:=+python3
endef

define Package/python3-udmx-pyusb/description
Programming the Anyma uDMX interface (and clones) Using Python and PyUSB
endef

$(eval $(call Py3Package,python3-udmx-pyusb))
$(eval $(call BuildPackage,python3-udmx-pyusb))
$(eval $(call BuildPackage,python3-udmx-pyusb-src))
$(eval $(call HostBuild))
