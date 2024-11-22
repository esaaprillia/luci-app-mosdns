include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyaudio
PKG_VERSION:=0.2.14
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=PyAudio
PKG_HASH:=78dfff3879b4994d1f4fc6485646a57755c6ee3c19647a491f790a0895bd2f87

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyaudio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Cross-platform audio I/O with PortAudio
  URL:=https://people.csail.mit.edu/hubert/pyaudio/
  DEPENDS:=+python3 +portaudio
endef

define Package/python3-pyaudio/description
PyAudio provides Python bindings for PortAudio v19, the cross-platform audio I/O library.
With PyAudio, you can easily use Python to play and record audio on a variety of platforms, such as GNU/Linux, Microsoft Windows, and Apple macOS.
endef

$(eval $(call Py3Package,python3-pyaudio))
$(eval $(call BuildPackage,python3-pyaudio))
$(eval $(call BuildPackage,python3-pyaudio-src))
$(eval $(call HostBuild))
