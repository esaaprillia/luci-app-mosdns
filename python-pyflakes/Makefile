include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyflakes
PKG_VERSION:=3.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyflakes
PKG_HASH:=1c61603ff154621fb2a9172037d84dca3500def8c8b630657d1701f026f8af3f

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyflakes
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=passive checker of Python programs
  URL:=https://pypi.org/project/pyflakes
  DEPENDS:=+python3
endef

define Package/python3-pyflakes/description
A simple program which checks Python source files for errors.
Pyflakes analyzes programs and detects various errors. It works by parsing the source file, not importing it, so it is safe to use on modules with side effects. It’s also much faster.
endef

$(eval $(call Py3Package,python3-pyflakes))
$(eval $(call BuildPackage,python3-pyflakes))
$(eval $(call BuildPackage,python3-pyflakes-src))
$(eval $(call HostBuild))
