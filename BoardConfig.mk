USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/k30t/BoardConfigVendor.mk
#-include device/lenovo/k30t/kernel/AndroidKernel.mk
# Assert
TARGET_OTA_ASSERT_DEVICE := Kraft-T

#Board
BOARD_VENDOR := lenovo
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

#Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := Kraft-T
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

#kernel
TARGET_PREBUILT_KERNEL := device/lenovo/k30t/kernel/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/lenovo/k30t/dt.img
KERNEL_EXFAT_MODULE_NAME := "exfat"

# fix this up by examining /proc/mtd on a running device
#BOARD_CUSTOM_BOOTIMG_MK := device/lenovo/k30t/mkbootimg.mk
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

#Recovery
#Fstab
TARGET_RECOVERY_FSTAB := device/lenovo/k30t/rootdir/etc/recovery.fstab

#Font
BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn30_18x48.h\"
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fonten44_26x71.h\"

#Screen
TARGET_RECOVERY_SCREEN_WIDTH := 720x1280
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

#Pexil Format RGBX
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#Pixel if or? And configure KERNEL_OBJ Graphics
TARGET_USES_QCOM_BSP := true
#BOARD_CUSTOM_GRAPHICS := ../../../device/lenovo/k30t/recovery/graphics_cn.c

#mmcutils
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

#Touch Swipe
#BOARD_RECOVERY_SWIPE := true

#Virtual key
RECOVERY_USE_VIRTUAL_KEY := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lenovo/k30t/recovery/recovery_keys.c

#/data/media/0 Storage
#RECOVERY_USE_MIGRATED_STORAGE := true
#RECOVERY_NEED_SELINUX_FIX := true

#lcd bright
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

#Philz Touch
#BOARD_USE_FB2PNG := true
#BOARD_USE_AROMA_FILE_MANAGER := true

#Fix Wipe
#BOARD_NO_SECURE_DISCARD := true
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

#Fix Qcom Time
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# TWRP
TW_FLASH_FROM_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard2"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard2"
TW_HAS_DOWNLOAD_MODE := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_NO_USB_STORAGE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
#TW_BRIGHTNESS_PATH := "/sys/devices/soc.0/1a00000.qcom,mdss_mdp/qcom,mdss_fb_primary.122/leds/lcd-backlight/brightness"
#TW_MAX_BRIGHTNESS := 255
#TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_INCLUDE_FB2PNG := true
#TW_USE_TOOLBOX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true










