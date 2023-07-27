# Generated by Boost 1.80.0

# address-model=64

if(CMAKE_SIZEOF_VOID_P EQUAL 4)
  _BOOST_SKIPPED("libboost_python39.dylib" "64 bit, need 32")
  return()
endif()

# python=3.9

if(Boost_PYTHON_VERSION)
  string(REGEX REPLACE "([0-9]+[.][0-9]+)([.].*)?" "\\1" __boost_pyver ${Boost_PYTHON_VERSION})
  if(NOT __boost_pyver VERSION_EQUAL "3.9")
    _BOOST_SKIPPED("libboost_python39.dylib" "3.9, Boost_PYTHON_VERSION=${Boost_PYTHON_VERSION}")
    return()
  endif()
endif()

if(Boost_PYTHON_VERSION_MAJOR)
  if(NOT "3.9" MATCHES "^${Boost_PYTHON_VERSION_MAJOR}[.]")
    _BOOST_SKIPPED("libboost_python39.dylib" "3.9, Boost_PYTHON_VERSION_MAJOR=${Boost_PYTHON_VERSION_MAJOR}")
    return()
  endif()
endif()

# layout=system

# toolset=clang-darwin13

# link=shared

if(DEFINED Boost_USE_STATIC_LIBS)
  if(Boost_USE_STATIC_LIBS)
    _BOOST_SKIPPED("libboost_python39.dylib" "shared, Boost_USE_STATIC_LIBS=${Boost_USE_STATIC_LIBS}")
    return()
  endif()
else()
  if(WIN32 AND NOT _BOOST_SINGLE_VARIANT)
    _BOOST_SKIPPED("libboost_python39.dylib" "shared, default on Windows is static, set Boost_USE_STATIC_LIBS=OFF to override")
    return()
  endif()
endif()

# runtime-link=shared

if(Boost_USE_STATIC_RUNTIME)
  _BOOST_SKIPPED("libboost_python39.dylib" "shared runtime, Boost_USE_STATIC_RUNTIME=${Boost_USE_STATIC_RUNTIME}")
  return()
endif()

# runtime-debugging=off

if(Boost_USE_DEBUG_RUNTIME)
  _BOOST_SKIPPED("libboost_python39.dylib" "release runtime, Boost_USE_DEBUG_RUNTIME=${Boost_USE_DEBUG_RUNTIME}")
  return()
endif()

# threading=multi

# variant=release

if(NOT "${Boost_USE_RELEASE_LIBS}" STREQUAL "" AND NOT Boost_USE_RELEASE_LIBS)
  _BOOST_SKIPPED("libboost_python39.dylib" "release, Boost_USE_RELEASE_LIBS=${Boost_USE_RELEASE_LIBS}")
  return()
endif()

if(Boost_VERBOSE OR Boost_DEBUG)
  message(STATUS "  [x] libboost_python39.dylib")
endif()

if(NOT Boost_PYTHON_VERSION)
  if(Boost_DEBUG)
    message(STATUS "  Setting Boost_PYTHON_VERSION to 3.9")
  endif()
  set(Boost_PYTHON_VERSION "3.9")
endif()

# Create imported target Boost::python

if(NOT TARGET Boost::python)
  add_library(Boost::python SHARED IMPORTED)

  set_target_properties(Boost::python PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${_BOOST_INCLUDEDIR}"
    INTERFACE_COMPILE_DEFINITIONS "BOOST_PYTHON_NO_LIB"
  )
endif()

# Target file name: libboost_python39.dylib

get_target_property(__boost_imploc Boost::python IMPORTED_LOCATION_RELEASE)
if(__boost_imploc)
  message(SEND_ERROR "Target Boost::python already has an imported location '${__boost_imploc}', which is being overwritten with '${_BOOST_LIBDIR}/libboost_python39.dylib'")
endif()
unset(__boost_imploc)

set_property(TARGET Boost::python APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)

set_target_properties(Boost::python PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE CXX
  IMPORTED_LOCATION_RELEASE "${_BOOST_LIBDIR}/libboost_python39.dylib"
  )

set_target_properties(Boost::python PROPERTIES
  MAP_IMPORTED_CONFIG_MINSIZEREL Release
  MAP_IMPORTED_CONFIG_RELWITHDEBINFO Release
  )

set_property(TARGET Boost::python APPEND
  PROPERTY INTERFACE_COMPILE_DEFINITIONS "BOOST_PYTHON_DYN_LINK"
  )

list(APPEND _BOOST_PYTHON_DEPS headers)
