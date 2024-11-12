include $(TOPDIR)/rules.mk

PKG_NAME:=tgt
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/FedericoBruzzone/tgt/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

RUST_PKG_FEATURES:=local-tdlib

export PKG_CONFIG_PATH="$(STAGING_DIR)/usr/lib/pkgconfig"
export LOCAL_TDLIB_PATH="$(STAGING_DIR)/usr"
export LD_LIBRARY_PATH="$(STAGING_DIR)/usr/lib"

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk

export PKG_CONFIG_PATH="$(STAGING_DIR)/usr/lib/pkgconfig"
export LOCAL_TDLIB_PATH="$(STAGING_DIR)/usr"
export LD_LIBRARY_PATH="$(STAGING_DIR)/usr/lib"

define Package/tgt
  SECTION:=net
  CATEGORY:=Network
  TITLE:=TUI for Telegram written in Rust
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libopenssl +telegram-tdlib
  URL:=https://github.com/FedericoBruzzone/tgt
endef

define Package/tgt/description
  tgt is a terminal user interface for Telegram, written in Rust.
endef

CARGO_PKG_VARS += \
	PKG_CONFIG_PATH="$(STAGING_DIR)/usr/lib/pkgconfig" \
	LOCAL_TDLIB_PATH="$(STAGING_DIR)/usr" \
	LD_LIBRARY_PATH="$(STAGING_DIR)/usr/lib"

$(eval $(call RustBinPackage,tgt))
$(eval $(call BuildPackage,tgt))
