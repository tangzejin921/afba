cmake_minimum_required(VERSION 3.4.1)
set(CMAKE_C_STANDARD 11)


set(base_dir ${CMAKE_CURRENT_LIST_DIR})
set(inc_dir ${base_dir}/include)

include_directories(${inc_dir})

set(CMAKE_C_FLAGS "-D GL_GLEXT_PROTOTYPES -DHAVE_STDIO_H -mcpu=cortex-a8 -march=armv7-a -mtune=cortex-a8 -mfpu=vfpv3 -O3 -Os")

add_library(SDL
        SHARED
        src/SDL.c
        src/SDL_assert.c
        src/SDL_compat.c
        src/SDL_error.c
        src/SDL_fatal.c
        src/SDL_hints.c
        src/SDL_log.c
        src/audio/SDL_audio.c
        src/audio/SDL_audiocvt.c
        src/audio/SDL_audiodev.c
        src/audio/SDL_audiotypecvt.c
        src/audio/SDL_mixer.c
        src/audio/SDL_wave.c
        src/audio/android/SDL_androidaudio.c
        src/audio/dummy/SDL_dummyaudio.c
        src/atomic/SDL_atomic.c
        src/atomic/SDL_spinlock.c
        src/core/android/SDL_android.cpp
        src/cpuinfo/SDL_cpuinfo.c
        src/events/SDL_clipboardevents.c
        src/events/SDL_dropevents.c
        src/events/SDL_events.c
        src/events/SDL_gesture.c
        src/events/SDL_keyboard.c
        src/events/SDL_mouse.c
        src/events/SDL_quit.c
        src/events/SDL_touch.c
        src/events/SDL_windowevents.c
        src/file/SDL_rwops.c
        src/haptic/SDL_haptic.c
        src/haptic/dummy/SDL_syshaptic.c
        src/joystick/SDL_joystick.c
        src/joystick/android/SDL_sysjoystick.c
        src/loadso/dlopen/SDL_sysloadso.c
        src/power/SDL_power.c
        src/render/SDL_render.c
        src/render/SDL_yuv_mmx.c
        src/render/SDL_yuv_sw.c
        src/render/direct3d/SDL_render_d3d.c
        src/render/nds/SDL_ndsrender.c
        src/render/opengl/SDL_render_gl.c
        src/render/opengl/SDL_shaders_gl.c
        src/render/opengles/SDL_render_gles.c
        src/render/opengles2/SDL_render_gles2.c
        src/render/opengles2/SDL_shaders_gles2.c
        src/render/software/SDL_blendline.c
        src/render/software/SDL_blendpoint.c
        src/render/software/SDL_blendfillrect.c
        src/render/software/SDL_drawline.c
        src/render/software/SDL_drawpoint.c
        src/render/software/SDL_render_sw.c
        src/stdlib/SDL_getenv.c
        src/stdlib/SDL_iconv.c
        src/stdlib/SDL_malloc.c
        src/stdlib/SDL_qsort.c
        src/stdlib/SDL_stdlib.c
        src/stdlib/SDL_string.c
        src/thread/SDL_thread.c
        src/thread/pthread/SDL_syscond.c
        src/thread/pthread/SDL_sysmutex.c
        src/thread/pthread/SDL_syssem.c
        src/thread/pthread/SDL_systhread.c
        src/timer/SDL_timer.c
        src/timer/unix/SDL_systimer.c
        src/video/SDL_blit.c
        src/video/SDL_blit_0.c
        src/video/SDL_blit_1.c
        src/video/SDL_blit_A.c
        src/video/SDL_blit_auto.c
        src/video/SDL_blit_copy.c
        src/video/SDL_blit_N.c
        src/video/SDL_blit_slow.c
        src/video/SDL_bmp.c
        src/video/SDL_clipboard.c
        src/video/SDL_fillrect.c
        src/video/SDL_pixels.c
        src/video/SDL_rect.c
        src/video/SDL_RLEaccel.c
        src/video/SDL_shape.c
        src/video/SDL_stretch.c
        src/video/SDL_surface.c
        src/video/SDL_video.c
        src/video/android/SDL_androidevents.c
        src/video/android/SDL_androidgl.c
        src/video/android/SDL_androidkeyboard.c
        src/video/android/SDL_androidtouch.c
        src/video/android/SDL_androidvideo.c
        src/video/android/SDL_androidwindow.c
        )

find_library(log-lib log)
target_link_libraries(SDL ${log-lib})

find_library(dl-lib dl)
target_link_libraries(SDL ${dl-lib})

find_library(GLv1-lib GLESv1_CM)
target_link_libraries(SDL ${GLv1-lib})

find_library(GLv2-lib GLESv2)
target_link_libraries(SDL ${GLv2-lib})
