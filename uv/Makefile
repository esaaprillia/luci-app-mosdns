include $(TOPDIR)/rules.mk

PKG_NAME:=uv
PKG_VERSION:=0.5.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/astral-sh/uv/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE-APACHE LICENSE-MIT

PKG_BUILD_DEPENDS:=rust/host
PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/rust/rust-package.mk

define Package/uv
  SECTION:=net
  CATEGORY:=Network
  TITLE:=An extremely fast Python package and project manager, written in Rust.
  DEPENDS:=$(RUST_ARCH_DEPENDS) +libbz2
  URL:=https://docs.astral.sh/uv
endef

define Package/uv/description
  An extremely fast Python package and project manager, written in Rust.
endef

$(eval $(call RustBinPackage,uv))
$(eval $(call BuildPackage,uv))
