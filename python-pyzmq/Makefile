include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyzmq
PKG_VERSION:=26.2.0
PKG_RELEASE:=1

PYPI_NAME:=pyzmq
PKG_HASH:=070672c258581c8e4f640b5159297580a9974b026043bd4ab0470be9ed324f1f

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyzmq
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=PyZMQ: Python bindings for zeromq
  URL:=https://github.com/zeromq/pyzmq
  DEPENDS:=+python3 +python3-tornado +libzmq-nc
endef

define Package/python3-pyzmq/description
This package contains Python bindings for ZeroMQ. ØMQ is a lightweight and fast messaging implementation.
endef

$(eval $(call Py3Package,python3-pyzmq))
$(eval $(call BuildPackage,python3-pyzmq))
$(eval $(call BuildPackage,python3-pyzmq-src))
$(eval $(call HostBuild))
