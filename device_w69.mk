LOCAL_PATH := device/symphony/w69

PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay/



ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_w69
PRODUCT_DEVICE := w69



##############NEcesary files

PRODUCT_PACKAGES += \
    mkmtkbootimg
	
include frameworks/native/build/phone-hdpi-512-dalvik-heap.mk

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/root/init.protect.rc:root/init.protect.rc \
    $(LOCAL_PATH)/rootdir/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/rootdir/root/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/root/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/root/fstab:root/fstab \
    $(LOCAL_PATH)/rootdir/root/ueventd.rc:root/ueventd.rc \
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
	
PRODUCT_COPY_FILES += \
    device/symphony/w69/modules/ccci.ko:system/lib/modules/ccci.ko \
    device/symphony/w69/modules/ccci_plat.ko:system/lib/modules/ccci_plat.ko \
    device/symphony/w69/modules/devapc.ko:system/lib/modules/devapc.ko \
    device/symphony/w69/modules/devinfo.ko:system/lib/modules/devinfo.ko \
    device/symphony/w69/modules/hid-logitech-dj.ko:system/lib/modules/hid-logitech-dj.ko \
    device/symphony/w69/modules/mtk_fm_drv.ko:system/lib/modules/mtk_fm_drv.ko \
    device/symphony/w69/modules/mtk_stp_bt.ko:system/lib/modules/mtk_stp_bt.ko \
    device/symphony/w69/modules/mtk_stp_gps.ko:system/lib/modules/mtk_stp_gps.ko \
    device/symphony/w69/modules/mtk_stp_wmt.ko:system/lib/modules/mtk_stp_wmt.ko \
    device/symphony/w69/modules/mtk_wmt_wifi.ko:system/lib/modules/mtk_wmt_wifi.ko \
    device/symphony/w69/modules/scsi_tgt.ko:system/lib/modules/scsi_tgt.ko \
    device/symphony/w69/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    device/symphony/w69/modules/sec.ko:system/lib/modules/sec.ko \
    device/symphony/w69/modules/vcodec_kernel_driver.ko:system/lib/modules/vcodec_kernel_driver.ko \
    device/symphony/w69/modules/wlan_mt6582.ko:system/lib/modules/wlan_mt6582.ko \
    device/symphony/w69/modules/wlan_mt6582.ko:system/lib/modules/
	
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/system/usr/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
	
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml 

PRODUCT_PACKAGES += Torch

PRODUCT_PACKAGES := \
    audio_policy.default \
    audio.primary.default \
    camera.default \
    gps.default \
    gralloc.default \
    keystore.default \
    libaudio.r_submix.default \
    libaudio.usb.default \
    lights.default \
    local_time.default \
    power.default \
    sensors.default \
    librs_jni \
    com.android.future.usb.accessory

WIFI_BAND := 802_11_BG
