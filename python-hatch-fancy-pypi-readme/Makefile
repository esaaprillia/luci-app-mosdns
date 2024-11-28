include $(TOPDIR)/rules.mk

PKG_NAME:=python-hatch-fancy-pypi-readme
PKG_VERSION:=24.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=hatch_fancy_pypi_readme
PKG_HASH:=44dd239f1a779b9dcf8ebc9401a611fd7f7e3e14578dcf22c265dfaf7c1514b8

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-hatchling/host python-hatch-vcs/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-hatchling/host python-hatch-vcs/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-hatch-fancy-pypi-readme
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fancy PyPI READMEs with Hatch
  URL:=https://github.com/hynek/hatch-fancy-pypi-readme
  DEPENDS:=+python3
endef

define Package/python3-hatch-fancy-pypi-readme/description
hatch-fancy-pypi-readme is an MIT-licensed metadata plugin for Hatch by Hynek Schlawack.
Its purpose is to help you to have fancy PyPI readmes – unlike this one you’re looking at right now.
Please check out the documentation to see what hatch-fancy-pypi-readme can do for you and your projects!
endef

$(eval $(call Py3Package,python3-hatch-fancy-pypi-readme))
$(eval $(call BuildPackage,python3-hatch-fancy-pypi-readme))
$(eval $(call BuildPackage,python3-hatch-fancy-pypi-readme-src))
$(eval $(call HostBuild))
