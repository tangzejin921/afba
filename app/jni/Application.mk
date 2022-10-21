#LOCAL_ARM_MODE   := arm

APP_ABI			:= armeabi-v7a
APP_PLATFORM		:= android-19
APP_STL			:= c++_static
APP_CFLAGS := -fpermissive -Wno-error -Wno-return-type -Wno-pointer-bool-conversion \
-Wno-shift-negative-value -Wno-unused-value -Wno-c++11-narrowing -Wno-format \
-Werror -Wno-unused-parameter -Wno-sign-compare -Wno-invalid-source-encoding \
-Wno-typedef-redefinition -Wno-incompatible-pointer-types -Wno-missing-field-initializers \
-Wno-implicit-function-declaration -Wno-deprecated-register -Wno-logical-not-parentheses \
-Wno-tautological-pointer-compare -Wno-parentheses-equality -Wno-array-bounds \
-Wformat

APP_CXXFLAGS :=  -std=c++11 -Wno-error=c++11-narrowing
APP_SHORT_COMMANDS := true
#NDK_TOOLCHAIN_VERSION	:= 4.8



