include $(TOPDIR)/rules.mk

PKG_NAME:=python-atomicwrites-homeassistant
PKG_VERSION:=1.4.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=atomicwrites-homeassistant
PKG_HASH:=256a672106f16745445228d966240b77b55f46a096d20305901a57aa5d1f4c2f

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-atomicwrites-homeassistant
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Atomic file writes.
  URL:=https://github.com/untitaker/python-atomicwrites
  DEPENDS:=+python3
endef

define Package/python3-atomicwrites-homeassistant/description
Fork because the original package is unmaintained.
endef

$(eval $(call Py3Package,python3-atomicwrites-homeassistant))
$(eval $(call BuildPackage,python3-atomicwrites-homeassistant))
$(eval $(call BuildPackage,python3-atomicwrites-homeassistant-src))
$(eval $(call HostBuild))
