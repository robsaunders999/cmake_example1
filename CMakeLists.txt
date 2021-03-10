# This is an example Cmakelists.txt project file.
# First it loads the git repo of make_bs
# Then run defaults_bs
# take a look in dir cmake for how to do stuff.

cmake_minimum_required(VERSION 3.10)

project(generic 
        VERSION 1.0.0 
        DESCRIPTION "Project layout example"
        HOMEPAGE_URL "~/code/cmake/cmake_bs/generic_cmake.md"
        LANGUAGES Fortran C 
        )

# Clone build system files.
if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/cmake/bs_clone.cmake)
  include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/bs_clone.cmake)
else()
  message(FATAL_ERROR "Unable to load build tools.(${CMAKE_CURRENT_SOURCE_DIR}/cmake/bs_clone.cmake) ")
endif()

# Boiler-plate here.
include(${buildsystem_SOURCE_DIR}/bs_defaults.cmake)


# TODO
# Defaults override file


add_subdirectory(src)


# Install
# Probably have bespoke requirements here...
include(${buildsystem_SOURCE_DIR}/bs_install.cmake)


