include $(TOPDIR)/rules.mk

PKG_NAME:=python-tornado
PKG_VERSION:=6.4.1
PKG_RELEASE:=1

PYPI_NAME:=tornado
PKG_HASH:=92d3ab53183d8c50f8204a51e6f91d18a15d5ef261e84d452800d4ff6fc504e9

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python3/host python-build/host python-installer/host python-wheel/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-tornado
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed.
  URL:=https://github.com/tornadoweb/tornado
  DEPENDS:=+python3
endef

define Package/python3-tornado/description
Tornado is a Python web framework and asynchronous networking library, originally developed at FriendFeed.
By using non-blocking network I/O, Tornado can scale to tens of thousands of open connections, making it ideal for long polling, WebSockets,
and other applications that require a long-lived connection to each user.
endef

$(eval $(call Py3Package,python3-tornado))
$(eval $(call BuildPackage,python3-tornado))
$(eval $(call BuildPackage,python3-tornado-src))
$(eval $(call HostBuild))
