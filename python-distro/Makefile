include $(TOPDIR)/rules.mk

PKG_NAME:=python-distro
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=distro
PKG_HASH:=2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-distro
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Distro - an OS platform information API
  URL:=https://distro.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-distro/description
distro provides information about the OS distribution it runs on, such as a reliable machine-readable ID, or version information.
It is the recommended replacement for Python's original platform.linux_distribution function (removed in Python 3.8). It also provides much more functionality which isn't necessarily Python bound, like a command-line interface.
Distro currently supports Linux and BSD based systems but Windows and OS X support is also planned.
endef

$(eval $(call Py3Package,python3-distro))
$(eval $(call BuildPackage,python3-distro))
$(eval $(call BuildPackage,python3-distro-src))
$(eval $(call HostBuild))
