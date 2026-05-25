include(hunter_add_version)
include(hunter_configuration_types)
include(hunter_pick_scheme)
include(hunter_download)
include(hunter_cacheable)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    libgpiod
    VERSION
    "2.2.4"
    URL
    "https://mirrors.edge.kernel.org/pub/software/libs/libgpiod/libgpiod-2.2.4.tar.gz"
    SHA1
    3defa0e352e54424835ca13aaa09b3c4c7dc9012
)

hunter_add_version(
    PACKAGE_NAME
    libgpiod
    VERSION
    "2.1.3"
    URL
    "https://mirrors.edge.kernel.org/pub/software/libs/libgpiod/libgpiod-2.1.3.tar.gz"
    SHA1
    84b0a04dc79e75dafdc121fbd25efcfe551978a7
)

hunter_cmake_args(
    libgpiod
    CMAKE_ARGS
        PKGCONFIG_EXPORT_TARGETS=libgpiodcxx;libgpiod
        EXTRA_FLAGS=--enable-tools=yes --enable-bindings-cxx
)

hunter_configuration_types(libgpiod CONFIGURATION_TYPES Release)
hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_cacheable(libgpiod)
hunter_download(
    PACKAGE_NAME libgpiod
    PACKAGE_INTERNAL_DEPS_ID "1"
    PACKAGE_UNRELOCATABLE_TEXT_FILES
        "lib/pkgconfig/libgpiodcxx.pc"
        "lib/pkgconfig/libgpiod.pc"
    )
