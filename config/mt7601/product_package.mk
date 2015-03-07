# Required global PRODUCT_* settings 
# This file is supposed to be included by the $(PRODUCT_MAKEFILES) file, which 
# is specified in device/$(vendor)/$(product)/AndroidProduct.mk. In most cases, 
# you can inherit this file from the subsidiary *.mk files inherted by 
# $(PRODUCT_MAKEFILES) file. 
# 
# Here is the example:
# ifeq ($(CONNECTIVITY_SOLUTION),MediaTek)
# $(call inherit-product-if-exists, hardware/mediatek/$(CONNECTIVITY_MODULE)/product_package.mk)
# endif

#$(info PRODUCT_PACKAGES include MT6620 )

# for mt7601 sta and ap drivers
#PRODUCT_COPY_FILES += \
	kernel/drivers/net/wireless/mt7601/DPA_MT7601U_ANDROID_JB_3.0.0.6_20130830/os/linux/mt7601Usta.ko:system/etc/Wireless/RT2870STA/mt7601Usta.ko \
	kernel/drivers/net/wireless/mt7601/DPA_MT7601U_ANDROID_JB_3.0.0.6_20130830/PREALLOC/os/linux/mtprealloc7601Usta.ko:system/etc/Wireless/RT2870STA/mtprealloc7601Usta.ko \
	kernel/drivers/net/wireless/mt7601/DPA_MT7601U_ANDROID_JB_3.0.0.6_20130830/RT2870STA.dat:system/etc/Wireless/RT2870STA/RT2870STA.dat \
	kernel/drivers/net/wireless/mt7601/DPO_MT7601U_ANDROID_AP_3.0.0.6_20130830/os/linux/mt7601Uap.ko:system/etc/Wireless/RT2870AP/mt7601Uap.ko \
	kernel/drivers/net/wireless/mt7601/DPO_MT7601U_ANDROID_AP_3.0.0.6_20130830/RT2870AP.dat:/data/misc/wifi/RT2870AP.dat

#For buiid in mt7601 ko to kernel
PRODUCT_COPY_FILES += \
     kernel/drivers/net/wireless/rkusbwifi/mt7601/DPA_MT7601U_ANDROID_JB_3.0.0.6_20130830/RT2870STA.dat:system/etc/firmware/RT2870STA.dat \
     kernel/drivers/net/wireless/rkusbwifi/mt7601/DPO_MT7601U_ANDROID_AP_3.0.0.6_20130830/RT2870AP.dat:system/etc/firmware/RT2870AP.dat

# for show p2p menu on wlan setting UI
PRODUCT_COPY_FILES +=  \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml

# for mt7601 related services in init.*.rc
PRODUCT_PACKAGES += \
	init.connectivity.rc

PRODUCT_PACKAGES += \
	iwconfig \
	iwlist \
	iwpriv

# WLAN
PRODUCT_PACKAGES += \
	wpa_supplicant \
	wpa_supplicant.conf \
	p2p_supplicant.conf \
	dhcpcd.conf

# HW test tool
PRODUCT_PACKAGES += \
    wcntest \
    wcntestd \
    libfmr \
    libautogps 

#Combo_Tool APK
#PRODUCT_PACKAGES += \
    libhwtest_bt_jni \
    libhwtest_fm_jni \
    libhwtest_wifi_jni \
    mysu
    
