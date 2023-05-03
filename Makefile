TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = Disney+
ARCHS = arm64 arm64e
FINALPACKAGE = 1

THEOS_DEVICE_IP = 192.168.102.61

THEOS_PACKAGE_SCHEME = rootless

export SYSROOT = $(THEOS)/sdks/iPhoneOS15.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FixDisney+

FixDisney+_FILES = Tweak.x
FixDisney+_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
