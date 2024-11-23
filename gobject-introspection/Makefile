include $(TOPDIR)/rules.mk

PKG_NAME:=gobject-introspection
PKG_VERSION:=1.74.0
PKG_RELEASE:=1

PKG_SOURCE_URL:=https://download.gnome.org/sources/$(PKG_NAME)/1.80
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_HASH:=347b3a719e68ba4c69ff2d57ee2689233ea8c07fc492205e573386779e42d653

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GNU Library General Public License v2 only
PKG_LICENSE_FILES:=COPYING COPYING.GPL COPYING.LGPL

HOST_BUILD_DEPENDS:=glib2/host pcre2/host libffi/host python-setuptools-scm/host meson/host
PKG_BUILD_DEPENDS:=glib2/host pcre2/host libffi/host python-setuptools-scm/host meson/host

PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/mosdns/meson/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/gobject-introspection
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Introspection system for GObject-based libraries
	DEPENDS:=+glib2 +libffi +python3 +python3-mako +python3-markdown +python3-setuptools
	URL:=https://wiki.gnome.org/action/show/Projects/GObjectIntrospection
endef

define Package/gobject-introspection/description
	The goal of the project is to describe the APIs and collect them in a uniform, machine readable format.
endef

#LDFLAGS="$(HOST_LDFLAGS) -lpcre2-8"
#TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

MESON_HOST_ARGS += \
	-Dcairo=disabled \
	-Ddoctool=disabled \
	-Dgtk_doc=false

MESON_ARGS += \
	-Dcairo=disabled \
	-Ddoctool=disabled \
	-Dgtk_doc=false \
	-Dpython="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)" \
	-Dbuild_introspection_data=false

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include \
	  $(1)/usr/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/gobject-introspection/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,gobject-introspection))
$(eval $(call HostBuild))
