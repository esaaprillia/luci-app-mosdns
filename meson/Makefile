include $(TOPDIR)/rules.mk

PKG_NAME:=meson
PKG_VERSION:=1.5.1
PKG_RELEASE:=1

PYPI_NAME:=meson
PKG_HASH:=567e533adf255de73a2de35049b99923caf872a455af9ce03e01077e0d384bed

PKG_MAINTAINER:=Andre Heider <a.heider@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

HOST_BUILD_DEPENDS:=pyproject-metadata/host
PKG_BUILD_DEPENDS:=pyproject-metadata/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Host/Configure
endef

define Host/Compile
endef

define Host/Install
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/bin
	$(HOST_BUILD_DIR)/packaging/create_zipapp.py $(HOST_BUILD_DIR) --outfile $(STAGING_DIR_HOSTPKG)/bin/meson
	$(INSTALL_DIR) $(STAGING_DIR_HOSTPKG)/lib/meson
	$(INSTALL_CONF) files/openwrt-cross.txt.in $(STAGING_DIR_HOSTPKG)/lib/meson/
	$(INSTALL_CONF) files/openwrt-native.txt.in $(STAGING_DIR_HOSTPKG)/lib/meson/
endef

define Host/Clean
	$(call Host/Clean/Default)
	rm -rf $(STAGING_DIR_HOSTPKG)/lib/meson
endef

define Package/meson
  SECTION:=devel
  CATEGORY:=Development
  TITLE:=meson
  URL:=https://mesonbuild.com/
  DEPENDS:=+python3-pkg-resources +python3-pyproject-metadata
endef

define Package/meson/description
  Meson is an open source build system meant to be both extremely fast, and, even more importantly, as user friendly as possible.
endef

define Package/meson/install
endef

$(eval $(call HostBuild))
$(eval $(call Py3Package,meson))
$(eval $(call BuildPackage,meson))
$(eval $(call BuildPackage,meson-src))
