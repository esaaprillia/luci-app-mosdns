cmake_bool = $(patsubst %,-D%:BOOL=$(if $($(1)),ON,OFF),$(2))

PKG_USE_NINJA ?= 1
HOST_USE_NINJA ?= 1
ifeq ($(PKG_USE_NINJA),1)
  PKG_BUILD_PARALLEL ?= 1
endif
ifeq ($(HOST_USE_NINJA),1)
  HOST_BUILD_PARALLEL ?= 1
endif
PKG_INSTALL:=1

ifneq ($(findstring c,$(OPENWRT_VERBOSE)),)
  MAKE_FLAGS+=VERBOSE=1
  HOST_MAKE_FLAGS+=VERBOSE=1
endif

CMAKE_BINARY_DIR = $(PKG_BUILD_DIR)$(if $(CMAKE_BINARY_SUBDIR),/$(CMAKE_BINARY_SUBDIR))
CMAKE_SOURCE_DIR = $(PKG_BUILD_DIR)$(if $(CMAKE_SOURCE_SUBDIR),/$(CMAKE_SOURCE_SUBDIR))
HOST_CMAKE_SOURCE_DIR = $(HOST_BUILD_DIR)$(if $(CMAKE_SOURCE_SUBDIR),/$(CMAKE_SOURCE_SUBDIR))
HOST_CMAKE_BINARY_DIR = $(HOST_BUILD_DIR)$(if $(CMAKE_BINARY_SUBDIR),/$(CMAKE_BINARY_SUBDIR))
MAKE_PATH = $(firstword $(CMAKE_BINARY_SUBDIR) .)

ifeq ($(CONFIG_EXTERNAL_TOOLCHAIN),)
  cmake_tool=$(firstword $(TOOLCHAIN_BIN_DIRS))/$(1)
else
  cmake_tool=$(shell command -v $(1))
endif

ifeq ($(CONFIG_CCACHE),)
 CMAKE_C_COMPILER_LAUNCHER:=
 CMAKE_CXX_COMPILER_LAUNCHER:=
 CMAKE_C_COMPILER:=$(call cmake_tool,$(TARGET_CC))
 CMAKE_CXX_COMPILER:=$(call cmake_tool,$(TARGET_CXX))

 CMAKE_HOST_C_COMPILER:=$(HOSTCC)
 CMAKE_HOST_CXX_COMPILER:=$(HOSTCXX)
else
  CCACHE:=$(STAGING_DIR_HOST)/bin/ccache
  CMAKE_C_COMPILER_LAUNCHER:=$(CCACHE)
  CMAKE_CXX_COMPILER_LAUNCHER:=$(CCACHE)
  CMAKE_C_COMPILER:=$(TARGET_CC_NOCACHE)
  CMAKE_CXX_COMPILER:=$(TARGET_CXX_NOCACHE)

  CMAKE_HOST_C_COMPILER:=$(HOSTCC_NOCACHE)
  CMAKE_HOST_CXX_COMPILER:=$(HOSTCXX_NOCACHE)
endif
CMAKE_AR:=$(call cmake_tool,$(TARGET_AR))
CMAKE_NM:=$(call cmake_tool,$(TARGET_NM))
CMAKE_RANLIB:=$(call cmake_tool,$(TARGET_RANLIB))

CMAKE_FIND_ROOT_PATH:=$(STAGING_DIR)/usr;$(TOOLCHAIN_ROOT_DIR)
CMAKE_HOST_FIND_ROOT_PATH:=$(STAGING_DIR)/host;$(STAGING_DIR_HOSTPKG);$(STAGING_DIR_HOST)
CMAKE_SHARED_LDFLAGS:=-Wl,-Bsymbolic-functions
CMAKE_HOST_INSTALL_PREFIX = $(HOST_BUILD_PREFIX)

ifeq ($(HOST_USE_NINJA),1)
  CMAKE_HOST_OPTIONS += -DCMAKE_GENERATOR="Ninja"

  define Host/Compile/Default
	+$(NINJA) -C $(HOST_CMAKE_BINARY_DIR) $(1)
  endef

  define Host/Install/Default
	+$(NINJA) -C $(HOST_CMAKE_BINARY_DIR) install
  endef

  define Host/Uninstall/Default
	+$(NINJA) -C $(HOST_CMAKE_BINARY_DIR) uninstall
  endef
else
  CMAKE_HOST_OPTIONS += -DCMAKE_GENERATOR="Unix Makefiles"
endif

ifeq ($(PKG_USE_NINJA),1)
  CMAKE_OPTIONS += -DCMAKE_GENERATOR="Ninja"

  define Build/Compile/Default
	+$(NINJA) -C $(CMAKE_BINARY_DIR) $(1)
  endef

  define Build/Install/Default
	+DESTDIR="$(PKG_INSTALL_DIR)" $(NINJA) -C $(CMAKE_BINARY_DIR) install
  endef
else
  CMAKE_OPTIONS += -DCMAKE_GENERATOR="Unix Makefiles"
endif

define Build/Configure/Default
endef

define Build/InstallDev/cmake
	$(INSTALL_DIR) $(1)
	$(CP) $(PKG_INSTALL_DIR)/* $(1)/
endef

Build/InstallDev = $(if $(CMAKE_INSTALL),$(Build/InstallDev/cmake))

define Host/Configure/Default
endef

MAKE_FLAGS += \
	CMAKE_COMMAND='$$(if $$(CMAKE_DISABLE_$$@),:,$(STAGING_DIR_HOST)/bin/cmake)' \
	CMAKE_DISABLE_cmake_check_build_system=1
