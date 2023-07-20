# Copyright (c) 2016-2020, Rahul Sheth, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    libpqxx
    VERSION
    7.7.5
    URL
    "https://github.com/jtv/libpqxx/archive/refs/tags/7.7.5.tar.gz"
    SHA1
    30f571ea51b58a58b40af34ed67c18c3ac6d57ee
)
hunter_cmake_args(
    libpqxx
    CMAKE_ARGS
        SKIP_BUILD_TEST=ON
        BUILD_DOC=OFF
        BUILD_SHARED_LIBS=ON
        INSTALL_TEST=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(libpqxx)
hunter_download(PACKAGE_NAME libpqxx)
