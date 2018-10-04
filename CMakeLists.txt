cmake_minimum_required(VERSION 3.1)

project(heapsapp)

file(GLOB libhl
    hashlink/src/std/array.c
    hashlink/src/std/buffer.c
    hashlink/src/std/bytes.c
    hashlink/src/std/cast.c
    hashlink/src/std/date.c
    hashlink/src/std/error.c
    hashlink/src/std/file.c
    hashlink/src/std/fun.c
    hashlink/src/std/maps.c
    hashlink/src/std/math.c
    hashlink/src/std/obj.c
    hashlink/src/std/random.c
    hashlink/src/std/regexp.c
    hashlink/src/std/socket.c
    hashlink/src/std/string.c
    hashlink/src/std/sys.c
    hashlink/src/std/types.c
    hashlink/src/std/ucs2.c
    hashlink/src/std/thread.c
    hashlink/src/std/process.c
	hashlink/src/alloc.c

    hashlink/std/sys_android.c
)

file(GLOB pcre
	hashlink/include/pcre/pcre_chartables.c
	hashlink/include/pcre/pcre_compile.c
	hashlink/include/pcre/pcre_dfa_exec.c
	hashlink/include/pcre/pcre_exec.c
	hashlink/include/pcre/pcre_fullinfo.c
	hashlink/include/pcre/pcre_globals.c
	hashlink/include/pcre/pcre_newline.c
	hashlink/include/pcre/pcre_string_utils.c
	hashlink/include/pcre/pcre_tables.c
	hashlink/include/pcre/pcre_ucd.c
	hashlink/include/pcre/pcre_xclass.c
	hashlink/include/pcre/pcre16_valid_utf16.c
	hashlink/include/pcre/pcre16_ord2utf16.c
)

include_directories(
	out
	hashlink/src
	hashlink/include/pcre
)

add_library(heapsapp SHARED
	${pcre}
	${libhl}
	out/main.c
)

target_link_libraries(heapsapp log)



