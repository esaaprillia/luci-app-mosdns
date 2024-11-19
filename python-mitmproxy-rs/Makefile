include $(TOPDIR)/rules.mk

PKG_NAME:=python-mitmproxy-rs
PKG_VERSION:=0.10.7
PKG_RELEASE:=1

PYPI_NAME:=mitmproxy_rs
PKG_HASH:=0959a540766403222464472b64122ac8ccbca66b5f019154496b98e62482277f

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-maturin/host python-setuptools-rust/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-maturin/host python-setuptools-rust/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-mitmproxy-rs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The Rust bits in mitmproxy.
  URL:=https://github.com/mitmproxy/mitmproxy_rs
  DEPENDS:=+python3 $(RUST_ARCH_DEPENDS)
endef

define Package/python3-mitmproxy-rs/description
This repository contains mitmproxy's Rust bits, most notably:
WireGuard Mode: The ability to proxy any device that can be configured as a WireGuard client.
Local Redirect Mode: The ability to proxy arbitrary macOS or Windows applications by name or pid.
endef

$(eval $(call Py3Package,python3-mitmproxy-rs))
$(eval $(call BuildPackage,python3-mitmproxy-rs))
$(eval $(call BuildPackage,python3-mitmproxy-rs-src))
$(eval $(call HostBuild))
