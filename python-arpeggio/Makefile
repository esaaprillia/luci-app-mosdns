include $(TOPDIR)/rules.mk

PKG_NAME:=python-arpeggio
PKG_VERSION:=2.0.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=Arpeggio
PKG_HASH:=c790b2b06e226d2dd468e4fbfb5b7f506cec66416031fde1441cf1de2a0ba700

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-arpeggio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Packrat parser interpreter
  URL:=https://github.com/textX/Arpeggio
  DEPENDS:=+python3
endef

define Package/python3-arpeggio/description
  Arpeggio is a recursive descent parser with memoization based on PEG grammars (aka Packrat parser).
endef

$(eval $(call Py3Package,python3-arpeggio))
$(eval $(call BuildPackage,python3-arpeggio))
$(eval $(call BuildPackage,python3-arpeggio-src))
$(eval $(call HostBuild))
