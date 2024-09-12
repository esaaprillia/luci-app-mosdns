include $(TOPDIR)/rules.mk

PKG_NAME:=meson
PKG_VERSION:=1.3.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/mesonbuild/meson/releases/download/$(PKG_VERSION)
PKG_HASH:=492eb450c8b073024276f916f5adbb3c4bb7e90e9e6ec124efda064f3d9b5baa

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=python-setuptools-scm/host pyproject-metadata/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host pyproject-metadata/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/meson
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Meson Build System
  URL:=https://github.com/mesonbuild/meson
  DEPENDS:=+python3 +python3-pyproject-metadata
endef

define Package/meson/description
  Meson® is a project to create the best possible next-generation build system.
endef

$(eval $(call Py3Package,meson))
$(eval $(call BuildPackage,meson))
$(eval $(call BuildPackage,meson-src))
$(eval $(call HostBuild))
