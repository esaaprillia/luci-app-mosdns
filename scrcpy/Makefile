include $(TOPDIR)/rules.mk

PKG_NAME:=scrcpy
PKG_VERSION:=2.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/Genymobile/scrcpy/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/meson.mk

define Package/scrcpy
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Display and control your Android device
	DEPENDS:=+android-tools +ffmpeg +libusb-compat +sdl2
	URL:=https://github.com/Genymobile/scrcpy
endef

define Package/scrcpy/description
	This application mirrors Android devices (video and audio) connected via USB or over TCP/IP,
	and allows to control the device with the keyboard and the mouse of the computer.
	It does not require any root access. It works on Linux, Windows and macOS.
endef

define Package/scrcpy/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/scrcpy \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/{applications,bash-completion,icons,scrcpy,zsh} \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,scrcpy))
