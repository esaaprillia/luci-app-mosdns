include $(TOPDIR)/rules.mk

PKG_NAME:=python-homeassistant
PKG_VERSION:=2024.10.4
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=homeassistant
PKG_HASH:=6a5e39592f1222038cd93a863c8a6d654ee234c6a961483e7cad8c2e1ebc971b

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-setuptools/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-homeassistant
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Open-source home automation platform running on Python 3.
  URL:=https://www.home-assistant.io/
  DEPENDS:=+python3 +python3-aiodns +python3-aiohasupervisor +python3-aiohttp +python3-aiohttp-cors +python3-aiohttp-fast-zlib +python3-aiozoneinfo +python3-astral +python3-async-interrupt +python3-attrs +python3-atomicwrites-homeassistant +python3-awesomeversion +python3-bcrypt +python3-certifi +python3-ciso8601 +python3-fnv-hash-fast +python3-hass-nabucasa +python3-httpx +python3-home-assistant-bluetooth +python3-ifaddr +python3-jinja2 +python3-lru-dict +python3-pyjwt +python3-cryptography +python3-pillow +python3-propcache +python3-pyopenssl +python3-orjson +python3-packaging +python3-psutil-home-assistant +python3-slugify +python3-yaml +python3-requests +python3-securetar +python3-sqlalchemy +python3-typing-extensions +python3-ulid-transform +python3-urllib3 +python3-uv +python3-voluptuous +python3-voluptuous-serialize +python3-voluptuous-openapi +python3-yarl +python3-webrtc-models
endef

define Package/python3-homeassistant/description
Open source home automation that puts local control and privacy first. Powered by a worldwide community of tinkerers and DIY enthusiasts. Perfect to run on a Raspberry Pi or a local server.
endef

$(eval $(call Py3Package,python3-homeassistant))
$(eval $(call BuildPackage,python3-homeassistant))
$(eval $(call BuildPackage,python3-homeassistant-src))
$(eval $(call HostBuild))
