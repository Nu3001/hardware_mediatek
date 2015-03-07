
LOCAL_PATH:=$(call my-dir)

#For MT66XX combo chip
ifeq ($(strip $(BOARD_CONNECTIVITY_MODULE)), combo_mt66xx)
    include $(LOCAL_PATH)/combo_mt66xx/Android.mk
endif

#For MT6622 + MT5931 Solution
ifeq ($(strip $(BOARD_CONNECTIVITY_MODULE)), mt5931_6622)
    include $(LOCAL_PATH)/mt5931_6622/Android.mk
endif

#For MT6622 Solution
ifeq ($(strip $(BOARD_CONNECTIVITY_MODULE)), mt6622)
#    include $(LOCAL_PATH)/mt6622/Android.mk
endif

 
#For MT7601 Solution
ifeq ($(strip $(BOARD_CONNECTIVITY_VENDOR)), MediaTek_mt7601)
    include $(LOCAL_PATH)/mt7601/Android.mk
endif
 