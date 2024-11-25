include $(TOPDIR)/rules.mk

PKG_NAME:=superlu
PKG_VERSION:=7.0.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/xiaoyeli/superlu/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=License.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/superlu
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Supernodal sparse direct solver.
	DEPENDS:=+INSTALL_GFORTRAN:libgfortran +openblas
	URL:=https://portal.nersc.gov/project/sparse/superlu/
endef

define Package/superlu/description
	SuperLU contains a set of subroutines to solve a sparse linear system A*X=B. It uses Gaussian elimination with partial pivoting (GEPP).
	It uses Gaussian elimination with partial pivoting (GEPP). The columns of A may be preordered before factorization; the preordering for sparsity is completely separate from the factorization.
endef

CMAKE_OPTIONS += \
	-DBUILD_SHARED_LIBS=ON \
	-Denable_internal_blaslib:BOOL=OFF

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/superlu \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,cmake} \
	  $(1)/usr/lib/
endef

define Package/superlu/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,superlu))
