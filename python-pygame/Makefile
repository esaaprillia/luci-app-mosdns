include $(TOPDIR)/rules.mk

PKG_NAME:=python-pygame
PKG_VERSION:=2.6.1
PKG_RELEASE:=1

PYPI_NAME:=pygame
PKG_HASH:=56fb02ead529cee00d415c3e007f75e0780c655909aaa8e8bf616ee09c9feb1f

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1-or-later
PKG_LICENSE_FILES:=LGPL.txt

HOST_BUILD_DEPENDS:=python-cython/host python-pkgconfig/host python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-cython/host python-pkgconfig/host python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pygame
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python Game Development
  URL:=https://github.com/pygame/pygame
  DEPENDS:=+python3 +python3-numpy +sdl2 +sdl2-image +sdl2-mixer +sdl2-ttf +sdl2-gfx +libfreetype +libpng +portmidi +libx11
endef

define Package/python3-pygame/description
  Pygame is a free and open-source cross-platform library for the development of multimedia applications like video games using Python.
  It uses the Simple DirectMedia Layer library and several other popular libraries to abstract the most common functions, making writing these programs a more intuitive task.
endef

CFLAGS:="$(TARGET_CFLAGS)  -D_FORTIFY_SOURCE=0

PYTHON3_PKG_SETUP_VARS += \
	LOCALBASE="$(STAGING_DIR)/usr" \
	PORTMIDI_INC_PORTTIME=1

PYTHON3_PKG_SETUP_ARGS:=LOCALBASE="$(STAGING_DIR)/usr"

$(eval $(call Py3Package,python3-pygame))
$(eval $(call BuildPackage,python3-pygame))
$(eval $(call BuildPackage,python3-pygame-src))
$(eval $(call HostBuild))
