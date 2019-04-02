
#=============================================================================
# Copyright 2002-2011 Kitware, Inc.
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

# This module is shared by multiple languages; use include blocker.
if(__COMPILER_ZOS)
  return()
endif()
set(__COMPILER_ZOS 1)

macro(__compiler_zos lang)
  # Feature flags.
  set(CMAKE_${lang}_VERBOSE_FLAG "-V")

  # Initial configuration flags.
  set(CMAKE_${lang}_FLAGS_INIT "")
  set(CMAKE_${lang}_FLAGS_DEBUG_INIT "-qdebug")
  set(CMAKE_${lang}_FLAGS_MINSIZEREL_INIT "-O -DNDEBUG")
  set(CMAKE_${lang}_FLAGS_RELEASE_INIT "-O3 -DNDEBUG")
  set(CMAKE_${lang}_FLAGS_RELWITHDEBINFO_INIT "-O2 -qdebug -DNDEBUG")
endmacro()
