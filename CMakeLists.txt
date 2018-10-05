cmake_minimum_required(VERSION 3.1)

project(heapsapp)

include_directories(hashlink/src)

# LibHL

file(GLOB libhl
    hashlink/src/std/*.c
	hashlink/src/alloc.c
)
list(REMOVE_ITEM libhl ${CMAKE_CURRENT_SOURCE_DIR}/hashlink/src/std/debug.c)

file(GLOB pcre hashlink/include/pcre/pcre*.c)

add_library(hl STATIC
	${pcre}
	${libhl}
    hashlink/src/std/sys_android.c
)

target_include_directories(hl PRIVATE hashlink/include/pcre)
target_link_libraries(hl log)

# FMT

set(TJ_LIB ${CMAKE_CURRENT_SOURCE_DIR}/libjpeg-turbo/obj/local/${ANDROID_ABI}/libjpeg-turbo.a)
add_custom_target(turbojpeg
	${ANDROID_NDK}/ndk-build APP_ABI=${ANDROID_ABI}  APP_PLATFORM=${ANDROID_PLATFORM}
	WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/libjpeg-turbo
	BYPRODUCTS ${TJ_LIB}
)

file(GLOB fmt hashlink/libs/fmt/*.c)
file(GLOB png hashlink/include/png/*.c)
file(GLOB zlib hashlink/include/zlib/*.c)
file(GLOB vorbis hashlink/include/vorbis/*.c)
file(GLOB mikkt hashlink/include/mikktspace/*.c)

add_library(fmt.hdll STATIC
	${fmt}
	${png}
	${zlib}
	${vorbis}
	${mikkt}
)

add_dependencies(fmt.hdll turbojpeg)
file(GLOB tj_include libjpeg-turbo/jni/vendor/libjpeg-turbo/libjpeg-turbo-*)
target_link_libraries(fmt.hdll ${TJ_LIB})
target_compile_definitions(fmt.hdll PRIVATE PNG_ARM_NEON_OPT=0) #disable Neon support for now

target_include_directories(fmt.hdll PRIVATE 
	hashlink/include/png
	hashlink/include/mikktspace
	hashlink/include/vorbis
	hashlink/include/zlib
	${tj_include}
)

# SDL

add_subdirectory(sdl2)
file(GLOB sdl hashlink/libs/sdl/*.c)
add_library(sdl.hdll STATIC ${sdl})
target_include_directories(sdl.hdll PUBLIC sdl2/include)
target_link_libraries(sdl.hdll SDL2 EGL GLESv3)

# OpenAL

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/openal-nativetools/CMakeLists.txt ${CMAKE_CURRENT_SOURCE_DIR}/openal-soft COPYONLY)
add_subdirectory(openal-soft)
file(GLOB openal hashlink/libs/openal/*.c)
add_library(openal.hdll STATIC ${openal})
target_include_directories(openal.hdll PUBLIC openal-soft/include)
target_link_libraries(openal.hdll OpenAL)

# UI

file(GLOB ui hashlink/libs/ui/ui_stub.c)
add_library(ui.hdll STATIC ${ui})

# Heaps Application

add_library(heapsapp SHARED out/main.c )
target_include_directories(heapsapp PRIVATE out)
target_link_libraries(heapsapp hl sdl.hdll fmt.hdll openal.hdll ui.hdll)
