# Install script for directory: D:/GGG/libs/mbedtls/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Mbed TLS")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/HONOR/AppData/Local/Android/Sdk/ndk/28.0.13004108/toolchains/llvm/prebuilt/windows-x86_64/bin/llvm-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/aes.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/aria.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/asn1.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/asn1write.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/base64.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/bignum.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/block_cipher.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/build_info.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/camellia.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ccm.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/chacha20.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/chachapoly.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/check_config.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/cipher.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/cmac.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/compat-2.x.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_crypto.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_legacy_from_psa.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_from_legacy.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_psa_superset_legacy.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_ssl.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_adjust_x509.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/config_psa.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/constant_time.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ctr_drbg.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/debug.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/des.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/dhm.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ecdh.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ecdsa.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ecjpake.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ecp.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/entropy.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/error.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/gcm.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/hkdf.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/hmac_drbg.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/lms.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/mbedtls_config.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/md.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/md5.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/net_sockets.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/nist_kw.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/oid.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/pem.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/pk.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/pkcs12.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/pkcs5.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/pkcs7.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/platform.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/platform_time.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/platform_util.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/poly1305.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/private_access.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/psa_util.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ripemd160.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/rsa.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/sha1.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/sha256.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/sha3.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/sha512.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ssl.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ssl_cache.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ssl_cookie.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/ssl_ticket.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/threading.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/timing.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/version.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/x509.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/x509_crl.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/x509_crt.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/mbedtls/x509_csr.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/build_info.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_adjust_auto_enabled.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_adjust_config_dependencies.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_adjust_config_key_pair_types.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_adjust_config_synonyms.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_builtin_composites.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_builtin_key_derivation.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_builtin_primitives.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_compat.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_config.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_driver_common.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_driver_contexts_key_derivation.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_extra.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_legacy.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_platform.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_se_driver.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_sizes.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_struct.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_types.h"
    "D:/GGG/libs/mbedtls/mbedtls/include/psa/crypto_values.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "D:/GGG/libs/mbedtls/build/x86/include/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
