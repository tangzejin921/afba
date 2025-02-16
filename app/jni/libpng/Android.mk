LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS :=
LOCAL_ARM_NEON  := true
LOCAL_MODULE    := libpng
LOCAL_SRC_FILES :=\
	png.c \
	pngerror.c \
	pngget.c \
	pngmem.c \
	pngpread.c \
	pngread.c \
	pngrio.c \
	pngrtran.c \
	pngrutil.c \
	pngset.c \
	pngtest.c \
	pngtrans.c \
	pngwio.c \
	pngwrite.c \
	pngwtran.c \
	pngwutil.c \
	arm/arm_init.c \
	arm/filter_neon.S \
	arm/filter_neon_intrinsics.c

#LOCAL_SHARED_LIBRARIES := -lz
#LOCAL_EXPORT_LDLIBS := -lz
LOCAL_LDLIBS :=  -lz
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/.

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_STATIC_LIBRARY)
