include $(TOPDIR)/rules.mk

PKG_NAME:=python-lru-dict
PKG_VERSION:=1.3.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=lru-dict
PKG_HASH:=54fd1966d6bd1fcde781596cb86068214edeebff1db13a2cea11079e3fd07b6b

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-lru-dict
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=An Dict like LRU container.
  URL:=https://propcache.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-lru-dict/description
A fixed size dict like container which evicts Least Recently Used (LRU) items once size limit is exceeded.
There are many python implementations available which does similar things. This is a fast and efficient C implementation. LRU maximum capacity can be modified at run-time. If you are looking for pure python version, look else where.
endef

$(eval $(call Py3Package,python3-lru-dict))
$(eval $(call BuildPackage,python3-lru-dict))
$(eval $(call BuildPackage,python3-lru-dict-src))
$(eval $(call HostBuild))
