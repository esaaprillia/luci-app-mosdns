include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydmxcontrol
PKG_VERSION:=2.0.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=PyDMXControl
PKG_HASH:=ea130d78b9dcf9fe1ba5092ef1c50cc5e6b2d795bda81957d8fa991dfc159eaa

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pydmxcontrol
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python 3 module to control DMX using OpenDMX or uDMX.
  URL:=https://github.com/MattIPv4/PyDMXControl
  DEPENDS:=+python3 +python3-pyusb +python3-udmx-pyusb +python3-pyftdi +python3-pyserial +python3-flask
endef

define Package/python3-pydmxcontrol/description
A Python 3 module to control DMX using OpenDMX or uDMX - Featuring fixture profiles, built-in effects and a web control panel.
endef

$(eval $(call Py3Package,python3-pydmxcontrol))
$(eval $(call BuildPackage,python3-pydmxcontrol))
$(eval $(call BuildPackage,python3-pydmxcontrol-src))
$(eval $(call HostBuild))
