

#-----------------------------------------------------------------------------
# Build a CPack installer if CPack is available and this is a build of just
# CTKAppLauncher (as opposed to a build of CTKAppLauncher included in some other project...)

IF("${CTKAppLauncher_BINARY_DIR}" STREQUAL "${CMAKE_BINARY_DIR}")
  SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "CTKAppLauncher - The Common Toolkit Application Launcher")
  SET(CPACK_PACKAGE_VENDOR "Kitware, Inc.")
  #SET(CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/Copyright.txt")
  #SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/Copyright.txt")
  SET(CPACK_PACKAGE_VERSION_MAJOR "${CTKAppLauncher_MAJOR_VERSION}")
  SET(CPACK_PACKAGE_VERSION_MINOR "${CTKAppLauncher_MINOR_VERSION}")
  SET(CPACK_PACKAGE_VERSION_PATCH "${CTKAppLauncher_BUILD_VERSION}")
  SET(CPACK_PACKAGE_INSTALL_DIRECTORY "CTKAppLauncher ${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}")
  SET(CPACK_SOURCE_PACKAGE_FILE_NAME "CTKAppLauncher-${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")
  SET(CPACK_PACKAGE_EXECUTABLES "CTKAppLauncher")

  INCLUDE(CPack)
ENDIF()

