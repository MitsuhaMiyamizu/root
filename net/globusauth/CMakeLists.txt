############################################################################
# CMakeLists.txt file for building ROOT net/globusauth package
############################################################################

ROOT_USE_PACKAGE(net/net)
ROOT_USE_PACKAGE(net/auth)

include_directories(${GLOBUS_INCLUDE_DIRS})

ROOT_LINKER_LIBRARY(GlobusAuth *.cxx  LIBRARIES Core ${GLOBUS_LIBRARIES} ${OPENSSL_LIBRARIES} ${CMAKE_DL_LIBS} DEPENDENCIES RootAuth Net)
ROOT_INSTALL_HEADERS()

if(builtin_openssl)
  ROOT_ADD_BUILTIN_DEPENDENCIES(GlobusAuth OPENSSL)
endif()
