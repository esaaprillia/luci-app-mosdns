include $(TOPDIR)/rules.mk

PKG_NAME:=librdkafka
PKG_VERSION:=2.5.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/confluentinc/librdkafka/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/librdkafka
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=The Apache Kafka C/C++ library
	DEPENDS:=+libopenssl +libsasl2 +libstdcpp +liblz4 +zlib +libzstd +libcurl
	URL:=https://github.com/confluentinc/librdkafka
endef

define Package/librdkafka/description
	librdkafka is a C library implementation of the Apache Kafka protocol, providing Producer, Consumer and Admin clients.
	It was designed with message delivery reliability and high performance in mind, current figures exceed 1 million msgs/second for the producer and 3 million msgs/second for the consumer.
endef

CMAKE_OPTIONS += \
	-DRDKAFKA_BUILD_EXAMPLES=OFF \
	-DRDKAFKA_BUILD_TESTS=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/librdkafka \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/
endef

define Package/librdkafka/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,librdkafka))
