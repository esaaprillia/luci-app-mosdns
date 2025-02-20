include $(TOPDIR)/rules.mk

PKG_NAME:=pybind11
PKG_VERSION:=2.13.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pybind/pybind11/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/pybind11
	SUBMENU:=Python
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=Seamless operability between C++11 and Python
	URL:=pybind11.readthedocs.io/
	DEPENDS:=+python3
endef

define Package/pybind11/description
	pybind11 — Seamless operability between C++11 and Python
endef

CMAKE_OPTIONS += \
	-Wno-dev \
	-DPYTHON_EXECUTABLE="$(STAGING_DIR_HOSTPKG)/bin/$(PYTHON3)"

define Build/Configure
	$(call Build/Configure/Default)
	$(call Py3Build/Configure)
endef

define Build/Compile
	$(call Build/Compile/Default)
	$(call Py3Build/Compile)
endef

define Build/Install
	$(call Build/Install/Default)
	$(call Py3Build/Install/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/pybind11 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/pybind11 \
	  $(1)/$(PYTHON3_PKG_DIR)
endef

define Package/pybind11/install
	$(INSTALL_DIR) \
	  $(1)/$(PYTHON3_PKG_DIR)

	$(CP) \
	  $(PKG_INSTALL_DIR)/$(PYTHON3_PKG_DIR)/pybind11 \
	  $(1)/$(PYTHON3_PKG_DIR)
endef

$(eval $(call BuildPackage,pybind11))
