USE_CAMERA_STUB := true

#recovery fstab
TARGET_RECOVERY_FSTAB := device/symphony/w69/rootdir/recovery/recovery.fstab

#custom boot img
BOARD_CUSTOM_MKBOOTIMG := mkmtkbootimg

TARGET_BOOTLOADER_BOARD_NAME := mt6572
TARGET_BOARD_PLATFORM := mt6572

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6572
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE :=
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# not sure if this is working...
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_RIL_CLASS := ../../../device/symphony/w69/ril/

# partition sizes, from /proc/dumchar_info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x600000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x8000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 681574400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 86769664
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/symphony/w69/prebuilt/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/symphony/w69/prebuilt/recovery_kernel

# openGL
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/symphony/w69/egl.cfg

# some properties
BOARD_HAS_NO_SELECT_BUTTON := true



