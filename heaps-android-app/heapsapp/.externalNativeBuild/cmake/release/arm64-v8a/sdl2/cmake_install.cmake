# Install script for directory: /Users/qkdreyer/Dev/heaps-android/sdl2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/libSDL2.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/build/intermediates/cmake/release/obj/arm64-v8a/libSDL2.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Users/qkdreyer/Library/Android/sdk/ndk/21.3.6528147/toolchains/llvm/prebuilt/darwin-x86_64/bin/aarch64-linux-android-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/libSDL2main.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/CMakeFiles/Export/lib/cmake/SDL2/SDL2Targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/Users/qkdreyer/Dev/heaps-android/sdl2/SDL2Config.cmake"
    "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/SDL2ConfigVersion.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_assert.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_atomic.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_audio.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_bits.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_blendmode.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_clipboard.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_android.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_iphoneos.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_macosx.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_minimal.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_pandora.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_psp.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_windows.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_winrt.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_config_wiz.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_copying.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_cpuinfo.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_egl.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_endian.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_error.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_events.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_filesystem.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_gamecontroller.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_gesture.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_haptic.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_hints.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_joystick.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_keyboard.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_keycode.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_loadso.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_log.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_main.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_messagebox.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_mouse.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_mutex.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_name.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengl.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengl_glext.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengles.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengles2.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengles2_gl2.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengles2_gl2ext.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengles2_gl2platform.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_opengles2_khrplatform.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_pixels.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_platform.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_power.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_quit.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_rect.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_render.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_revision.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_rwops.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_scancode.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_shape.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_stdinc.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_surface.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_system.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_syswm.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_assert.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_common.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_compare.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_crc32.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_font.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_fuzzer.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_harness.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_images.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_log.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_md5.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_memory.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_test_random.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_thread.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_timer.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_touch.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_types.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_version.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_video.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/SDL_vulkan.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/begin_code.h"
    "/Users/qkdreyer/Dev/heaps-android/sdl2/include/close_code.h"
    "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/include/SDL_config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/sdl2.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/Users/qkdreyer/Dev/heaps-android/heaps-android-app/heapsapp/.externalNativeBuild/cmake/release/arm64-v8a/sdl2/sdl2-config")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/share/aclocal/sdl2.m4")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/share/aclocal" TYPE FILE FILES "/Users/qkdreyer/Dev/heaps-android/sdl2/sdl2.m4")
endif()

