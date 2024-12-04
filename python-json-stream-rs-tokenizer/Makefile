include $(TOPDIR)/rules.mk

PKG_NAME:=python-json-stream-rs-tokenizer
PKG_VERSION:=0.4.26
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=json-stream-rs-tokenizer
PKG_HASH:=19333ccda9121b1224598d67178665f77e142862800cb1edd7797a62936f7a1c

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools-rust/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools-rust/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-json-stream-rs-tokenizer
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A faster tokenizer for the json-stream Python library
  URL:=https://github.com/smheidrich/py-json-stream-rs-tokenizer
  DEPENDS:=$(RUST_ARCH_DEPENDS) +python3
endef

define Package/python3-json-stream-rs-tokenizer/description
A faster tokenizer for the json-stream Python library.
It's actually just json-stream's own tokenizer (itself adapted from the NAYA project) ported to Rust almost verbatim and made available as a Python module using PyO3.
On my machine, it speeds up parsing by a factor of 4–10, depending on the nature of the data.
endef

$(eval $(call Py3Package,python3-json-stream-rs-tokenizer))
$(eval $(call BuildPackage,python3-json-stream-rs-tokenizer))
$(eval $(call BuildPackage,python3-json-stream-rs-tokenizer-src))
$(eval $(call HostBuild))
