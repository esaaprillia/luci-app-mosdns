include $(TOPDIR)/rules.mk

PKG_NAME:=python-wsproto
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PYPI_NAME:=wsproto
PKG_HASH:=ad565f26ecb92588a3e43bc3d96164de84cd9902482b130d0ddbaa9664a85065

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:= LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-wsproto
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=WebSockets state-machine based protocol implementation
  URL:=https://github.com/python-hyper/wsproto/
  DEPENDS:=+python3 +python3-h11
endef

define Package/python3-wsproto/description
This repository contains a pure-Python implementation of a WebSocket protocol stack.
It’s written from the ground up to be embeddable in whatever program you choose to use, ensuring that you can communicate via WebSockets,
as defined in RFC6455, regardless of your programming paradigm.
endef

$(eval $(call Py3Package,python3-wsproto))
$(eval $(call BuildPackage,python3-wsproto))
$(eval $(call BuildPackage,python3-wsproto-src))
$(eval $(call HostBuild))
