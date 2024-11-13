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

PKG_BUILD_DEPENDS:=rustup/host
PKG_BUILD_PARALLEL:=1

RUST_PKG_FEATURES:=pkg-config

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/mosdns/rustup/rust-values.mk

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

define Build/Compile
  cd $(PKG_BUILD_DIR) && \
  $(CARGO_PKG_CONFIG_VARS) \
  $(CARGO) $(CARGO_PKG_CONFIG_ARGS) --no-default-features --features local-tdlib
endef

define Package/tgt/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/target/$(RUSTUP_TARGET_ARCH)/release/tgt $(1)/usr/bin/
endef

$(eval $(call BuildPackage,tgt))
