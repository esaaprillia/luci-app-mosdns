#
# Copyright (C) 2006-2018 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=tk
TK_MAJOR_VERSION:=8.6
PKG_VERSION:=${TK_MAJOR_VERSION}.14
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)$(PKG_VERSION)-src.tar.gz
PKG_SOURCE_URL:=@SF/tcl/$(PKG_NAME)
PKG_HASH:=skip
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/$(PKG_NAME)$(PKG_VERSION)

PKG_MAINTAINER:=Joe Mistachkin <joe@mistachkin.com>
PKG_LICENSE:=TCL
PKG_LICENSE_FILES:=license.terms
PKG_CPE_ID:=cpe:/a:tcl_tk:tcl_tk

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1
HOST_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk

define Package/tk
  SUBMENU:=Tcl
  SECTION:=lang
  CATEGORY:=Languages
  DEPENDS:=+tcl +libx11
  TITLE:=The Tcl language
  URL:=https://www.tcl.tk/
endef

define Package/tk/description
  Tcl, or Tool Command Language, is a an elegant, versatile, feature-rich,
  simple-to-learn yet very powerful industrial-strength open-source
  programming language and development platform. It is renowned for its
  stability and utility, and its emphasis on providing a cross-platform
  programming API makes it an ideal choice for an enormous variety of
  programming jobs.
endef

CONFIGURE_PATH := unix

CONFIGURE_VARS += \
	tk_cv_strtod_unbroken=ok

CONFIGURE_ARGS += \
	--enable-threads \
	--with-tcl="$(STAGING_DIR)/usr/lib"

MAKE_PATH := unix

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/*.h $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libtk*.{a,so*} $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/tkConfig.sh $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/tk.pc \
		$(1)/usr/lib/pkgconfig
	$(SED) 's,/usr/include,$$$${prefix}/include,g' $(1)/usr/lib/pkgconfig/tk.pc
	$(SED) 's,/usr/lib,$$$${prefix}/lib,g' $(1)/usr/lib/pkgconfig/tk.pc
endef

define Package/tk/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so $(1)/usr/lib

	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/bin

	$(CP) -a $(PKG_INSTALL_DIR)/usr/lib/tk$(TK_MAJOR_VERSION) $(1)/usr/lib/
	$(LN) wish$(TK_MAJOR_VERSION) $(1)/usr/bin/wish
endef

define Host/Configure
	$(call Host/Configure/Default,$(1),$(2),$(CONFIGURE_PATH)/$(3))
endef

define Host/Compile
	+$(HOST_MAKE_VARS) \
	$(MAKE) $(HOST_JOBS) -C $(HOST_BUILD_DIR)/$(MAKE_PATH) \
		$(HOST_MAKE_FLAGS) \
		$(1)
endef

define Host/Install
	$(call Host/Compile,install)
	(cd $(HOST_BUILD_PREFIX)/bin; test -f wish || ln -s wish$(TK_MAJOR_VERSION) wish)
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,tk))
