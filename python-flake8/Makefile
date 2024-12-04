include $(TOPDIR)/rules.mk

PKG_NAME:=python-flake8
PKG_VERSION:=7.1.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=flake8
PKG_HASH:=049d058491e228e03e67b390f311bbf88fce2dbaa8fa673e7aea87b7198b8d38

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-pyflakes/host python-pycodestyle/host python-mccabe/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-pyflakes/host python-pycodestyle/host python-mccabe/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-flake8
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=the modular source code checker: pep8 pyflakes and co
  URL:=https://flake8.pycqa.org/
  DEPENDS:=+python3 +python3-pyflakes +python3-pycodestyle +python3-mccabe
endef

define Package/python3-flake8/description
Flake8 runs all the tools by launching the single flake8 command. It displays the warnings in a per-file, merged output.
endef

$(eval $(call Py3Package,python3-flake8))
$(eval $(call BuildPackage,python3-flake8))
$(eval $(call BuildPackage,python3-flake8-src))
$(eval $(call HostBuild))
