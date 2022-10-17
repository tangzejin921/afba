cmake_minimum_required(VERSION 3.4.1)
set(CMAKE_C_STANDARD 11)
add_library(libpng STATIC
        png.c
        pngerror.c
        pngget.c
        pngmem.c
        pngpread.c
        pngread.c
        pngrio.c
        pngrtran.c
        pngrutil.c
        pngset.c
        pngtest.c
        pngtrans.c
        pngwio.c
        pngwrite.c
        pngwtran.c
        pngwutil.c
        arm/arm_init.c
        arm/filter_neon.S
        arm/filter_neon_intrinsics.c)

find_library(z-lib z)

target_link_libraries(libpng ${z-lib})