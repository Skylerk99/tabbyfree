THEOS_DEVICE_IP = 192.168.2.57
ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = TabbyFREE
TabbyFREE_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
