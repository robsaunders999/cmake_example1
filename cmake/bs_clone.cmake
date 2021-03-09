# bs_clone.cmake
# Copy this file from the build system repo to the code repo.
# Bootstrap's.

# Clone repo
include(FetchContent)
FetchContent_Declare(buildsystem
  GIT_REPOSITORY    git@github.com:robsaunders999/cmake_bs.git
  GIT_TAG           master
)
FetchContent_MakeAvailable(buildsystem)

# This places build system files in ${buildsystem_SOURCE_DIR}


