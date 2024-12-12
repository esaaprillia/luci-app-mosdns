include $(TOPDIR)/rules.mk

PKG_NAME:=python-sniffio
PKG_VERSION:=1.3.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License Apache-2.0 MIT
PKG_LICENSE_FILES:=LICENSE LICENSE.APACHE2 LICENSE.MIT

PYPI_NAME:=sniffio
PKG_HASH:=f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-sniffio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sniff out which async library your code is running under
  URL:=https://sniffio.readthedocs.io/
  DEPENDS:=+python3 +python3-curio
endef

define Package/python3-sniffio/description
You’re writing a library. You’ve decided to be ambitious, and support multiple async I/O packages, like Trio, and asyncio, and … You’ve written a bunch of clever code to handle all the differences. But… how do you know which piece of clever code to run?

This is a tiny package whose only purpose is to let you detect which async library your code is running under.
endef

$(eval $(call Py3Package,python3-sniffio))
$(eval $(call BuildPackage,python3-sniffio))
$(eval $(call BuildPackage,python3-sniffio-src))
$(eval $(call HostBuild))
