include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    Print
    VERSION
    "0.0.1"
    URL
    "https://github.com/luispsm/hunter_test-dep/archive/refs/tags/v0.0.1.tar.gz"
    SHA1
    61f505b0518e33e1ff4bb0960aae9a773dc35bc8
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Print)
hunter_download(PACKAGE_NAME Print)

