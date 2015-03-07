

LOCAL_PATH := $(call my-dir)

# install init.mt662x.rc into out/target/product/$(project)/root folder, so that
# it can be import by the main init.rc or init.$(project).rc of the system.
include $(CLEAR_VARS)
LOCAL_MODULE := init.connectivity.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
LOCAL_SRC_FILES := init.mt7601.rc
include $(BUILD_PREBUILT)

WIFI_DRIVER_SOCKET_IFACE := wlan0
ifeq ($(strip $(WPA_SUPPLICANT_VERSION)),VER_0_8_X)
  include external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk
endif