include $(TOPDIR)/rules.mk

PKG_NAME:=pycairo
PKG_VERSION:=1.27.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pygobject/pycairo/releases/download/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING COPYING-LGPL-2.1 COPYING-MPL-1.1

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PYTHON3_PKG_BUILD:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/pycairo
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Python bindings for cairo
	URL:=https://github.com/pygobject/pycairo
	DEPENDS:=+python3 +libcairo
endef

define Package/pycairo/description
	Pycairo is a Python module providing bindings for the cairo graphics library.
endef

MESON_ARGS += \
	-Dpython="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-Dtests=false \
	-Dwheel=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/pycairo \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/cairo \
	  $(1)/$(PYTHON3_PKG_DIR)
endef

define Package/pycairo/install
	$(INSTALL_DIR) \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/cairo \
	  $(1)/$(PYTHON3_PKG_DIR)
endef

$(eval $(call BuildPackage,pycairo))
