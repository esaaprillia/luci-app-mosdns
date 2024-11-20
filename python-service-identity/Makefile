include $(TOPDIR)/rules.mk

PKG_NAME:=python-service-identity
PKG_VERSION:=24.2.0
PKG_RELEASE:=1

PYPI_NAME:=service_identity
PKG_HASH:=b8683ba13f0d39c6cd5d625d2c5f65421d6d707b013b375c355751557cbe8e09

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-hatchling/host python-hatch-vcs/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-hatchling/host python-hatch-vcs/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-service-identity
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Service identity verification for pyOpenSSL & cryptography.
  URL:=https://github.com/pyca/service-identity
  DEPENDS:=+python3 +python3-pyasn1 +python3-pyasn1-modules +python3-attrs +python3-cryptography
endef

define Package/python3-service-identity/description
service-identity aspires to give you all the tools you need for verifying whether a certificate is valid for the intended purposes. In the simplest case,
this means host name verification. However, service-identity implements RFC 6125 fully.
Also check out pem that makes loading certificates from all kinds of PEM-encoded files a breeze!
endef

$(eval $(call Py3Package,python3-service-identity))
$(eval $(call BuildPackage,python3-service-identity))
$(eval $(call BuildPackage,python3-service-identity-src))
$(eval $(call HostBuild))
