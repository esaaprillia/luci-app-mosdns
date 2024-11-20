include $(TOPDIR)/rules.mk

PKG_NAME:=python-hypothesis
PKG_VERSION:=6.119.3
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=hypothesis
PKG_HASH:=1403676d95bc9f118a30ce2c97fcbdd28dd99f3a1ffe3456970d98a56b370f36

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-sortedcontainers/host python-attrs/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-sortedcontainers/host python-attrs/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-hypothesis
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A library for property-based testing
  URL:=https://github.com/HypothesisWorks/hypothesis
  DEPENDS:=+python3 +python3-sortedcontainers +python3-attrs
endef

define Package/python3-hypothesis/description
  Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized by a source of examples,
  and then generates simple and comprehensible examples that make your tests fail. This lets you find more bugs in your code with less work.
endef

$(eval $(call Py3Package,python3-hypothesis))
$(eval $(call BuildPackage,python3-hypothesis))
$(eval $(call BuildPackage,python3-hypothesis-src))
$(eval $(call HostBuild))
