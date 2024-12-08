include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiodns
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiodns
PKG_HASH:=62869b23409349c21b072883ec8998316b234c9a9e36675756e8e317e8768f72

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-pycares/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-aiodns
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Simple DNS resolver for asyncio
  URL:=https://pypi.python.org/pypi/aiodns
  DEPENDS:=+python3 +python3-pycares
endef

define Package/python3-aiodns/description
aiodns provides a simple way for doing asynchronous DNS resolutions using pycares.
endef

$(eval $(call Py3Package,python3-aiodns))
$(eval $(call BuildPackage,python3-aiodns))
$(eval $(call BuildPackage,python3-aiodns-src))
$(eval $(call HostBuild))
