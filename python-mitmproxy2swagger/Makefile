include $(TOPDIR)/rules.mk

PKG_NAME:=python-mitmproxy2swagger
PKG_VERSION:=0.13.0
PKG_RELEASE:=1

PYPI_NAME:=mitmproxy2swagger
PKG_HASH:=b8c871827f13f85bd0131bb9c4123d3c87d6b06b52cb4f8167ebb174f7557bad

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=
PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host mitmproxy/host python-ruamel-yaml/host python-msgpack/host python-json-stream/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-mitmproxy2swagger
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Automagically reverse-engineer REST APIs via capturing traffic
  URL:=https://github.com/etingof/pyasn1-modules
  DEPENDS:=+python3 +mitmproxy +python3-ruamel-yaml +python3-msgpack +python3-json-stream
endef

define Package/python3-mitmproxy2swagger/description
A tool for automatically converting mitmproxy captures to OpenAPI 3.0 specifications. This means that you can automatically reverse-engineer REST APIs by just running the apps and capturing the traffic.
endef

$(eval $(call Py3Package,python3-mitmproxy2swagger))
$(eval $(call BuildPackage,python3-mitmproxy2swagger))
$(eval $(call BuildPackage,python3-mitmproxy2swagger-src))
$(eval $(call HostBuild))
