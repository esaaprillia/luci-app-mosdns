include $(TOPDIR)/rules.mk

PKG_NAME:=audioop
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/AbstractUmbra/audioop/archive/$(PKG_VERSION)
PKG_HASH:=skip

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/audioop
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=LTS Port of Python audioop
  URL:=https://github.com/AbstractUmbra/audioop
  DEPENDS:=+python3
endef

define Package/audioop/description
An LTS port of the Python builtin module audioop which was deprecated since version 3.11 and removed in 3.13.
This project exists to maintain this module for future versions.
endef

$(eval $(call Py3Package,audioop))
$(eval $(call BuildPackage,audioop))
$(eval $(call BuildPackage,audioop-src))
$(eval $(call HostBuild))
