# include proprietary libraries and binaries
-include vendor/gionee/gionee6735_65c_l/BoardConfigVendor.mk

TARGET_BUILD_VARIANT := 

# use these headers 
TARGET_SPECIFIC_HEADER_PATH := device/gionee/gionee6735_65c_l/include
 
# Link against libxlog
TARGET_LDPRELOAD += libxlog.so
 
# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6735m
TARGET_NO_BOOTLOADER := true
 
# Architecture 64 bit
TARGET_BOARD_PLATFORM := mt6735m
TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64

LOCAL_CFLAGS_64 := -mfpu=neon-fp-armv8 -mfloat-abi=softfp -march=armv8-a+crc -mtune=cortex-a57 -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DNO_SECURE_DISCARD -DDISABLE_HW_ID_MATCH_CHECK
LOCAL_CPPFLAGS_64 := -mfpu=neon-fp-armv8 -mfloat-abi=softfp -march=armv8-a+crc -mtune=cortex-a57 -DMTK_HARDWARE

#32 bit
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
 
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
TARGET_CPU_CORTEX_A53 := true

LOCAL_CFLAGS_32 := -mfpu=neon -mfloat-abi=softfp -march=armv8-a+crc -mtune=cortex-a57 -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DNO_SECURE_DISCARD -DDISABLE_HW_ID_MATCH_CHECK
LOCAL_CPPFLAGS_32 := -mfpu=neon -mfloat-abi=softfp  -march=armv8-a+crc -mtune=cortex-a57 -DMTK_HARDWARE
#Multi-lib system

LOCAL_MULTILIB := both
LOCAL_MODULE_PATH_32 := /system/lib/
LOCAL_MODULE_PATH_64 := /system/lib64/

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true 
TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)

ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

TARGET_USERIMAGES_USE_EXT4 := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file
# FIXME Remember to remove permissive selinux once grsecurity merges are done
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000

#extracted from stock recovery
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000
BOARD_RAMDISK_BASE := 0x44000000

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12328632320
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --second_offset 0x00e88000 --board 1442231656

# experimental
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# FIXME contact gionee/blu, tried blu and got a fuck you after threatening copyright infringement from FSF.
# build kernel from source
#TARGET_KERNEL_SOURCE := kernel/gionee/gionee6735_65c_l
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_CONFIG := cyanogenmod_porridgek3_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#MTK_APPENDED_DTB_SUPPORT := yes
#BOARD__IMAGE_NAME := Image.gz-dtb
# Stock_kernel
#TARGET_PREBUILT_KERNEL := device/gionee/gionee6735_65c_l/kernel

# prebuild kernel as fallback
TARGET_PREBUILT_KERNEL := device/gionee/gionee6735_65c_l/prebuilt/kernel

# Build an EXT4 ROM image 
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_FACTORYIMAGE := true

# system.prop
TARGET_SYSTEM_PROP := device/gionee/gionee6735_65c_l/system.prop

# FIXME CyanogenMod Hardware Hooks
#BOARD_HARDWARE_CLASS := device/gionee/gionee6735_65c_l/cmhw/

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# RIL
BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_USES_LEGACY_MTK_AV_BLOB := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/gionee/gionee6735_65c_l/bluetooth

# GPS
BOARD_GPS_LIBRARIES :=true
BOARD_CONNECTIVITY_MODULE := conn_soc
BOARD_MEDIATEK_USES_GPS := true

# Camera
USE_CAMERA_STUB := true

# Audio
TARGET_CPU_MEMCPY_OPT_DISABLE := true
BOARD_USES_MTK_AUDIO := true

# FM Radio
MTK_FM_SUPPORT := yes
MTK_FM_RX_SUPPORT := yes

# Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
#COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
#COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/gionee/gionee6735_65c_l/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true

# SELinux
BOARD_SEPOLICY_DIRS := \
       device/gionee/gionee6735_65c_l/sepolicy

# No longer neccessary in nougat
#BOARD_SEPOLICY_UNION := \
#    app.te \
#    device.te \
#    domain.te \
#    file.te \
#    file_contexts \
#    fs_use \
#    installd.te \
#    net.te \
#    netd.te \
#    te_macros \
#    vold.te \
#    untrusted_app.te \
#    platform_app.te \
#    system_app.te \
#    zygote.te \
#    aal.te \
#    akmd09911.te \
#    akmd8963.te \
#   akmd8975.te \
#   ami304d.te \
#   ist8303.te \
#   mc6470d.te \
#   qmcX983d.te \
#   st480.te \
#   af7133e.te \
#   mmc3524xd.te \
#   atcid.te \
#   atci_service.te \
#   audiocmdservice_atci.te \
#   batterywarning.te \
#   bmm050d.te \
#  bmm056d.te \
#   bmx056d.te \
#   boot_logo_updater.te \
#   br_app_data_service.te \
#   BGW.te \
#   ccci_fsd.te \
#   ccci_mdinit.te \
#   statusd.te \
#   flashlessd.te \
#   ccci_rpcd.te \
#   eemcs_fsd.te \
#   eemcs_mdinit.te \
#   dhcp6c.te \
#   dm_agent_binder.te \
#   dualmdlogger.te \
#   dumpstate.te \
#   em_svr.te \
#    enableswap.te \
#    disableswap.te \
#    factory.te \
#    fota1.te \
#    fuelgauged.te \
#    geomagneticd.te \
#    GoogleOtaBinder.te \
#    gsm0710muxdmd2.te \
#    gsm0710muxd.te \
#    guiext-server.te \
#    ipod.te \
#    matv.te \
#    mc6420d.te \
#    mdlogger.te \
#    mdnsd.te \
#    memsicd3416x.te \
#    bmc156d.te \
#    memsicd.te \
#    memsicp.te \
#    meta_tst.te \
#    mmc_ffu.te \
#    mmp.te \
#    mnld.te \
#    mobile_log_d.te \
#    mpud6050.te \
#    msensord.te \
#    mtk_6620_launcher.te \
#    mtk_agpsd.te \
#    mtkbt.te \
#    muxreport.te \
#    netdiag.te \
#    nvram_agent_binder.te \
#    nvram_backup_binder.te \
#    nvram_daemon.te \
#    orientationd.te \
#    permission_check.te \
#    poad.te \
#    pppd_dt.te \
#    pppd_via.te \
#    pq.te \
#    recovery.te \
#    resmon.te \
#    mtkrild.te \
#    mtkrildmd2.te \
#    viarild.te \
#    s62xd.te \
#    sn.te \
#    epdg_wod.te \
#    ipsec.te \
#    terservice.te \
#    thermald.te \
#    thermal_manager.te \
#    thermal.te \
#    tiny_mkswap.te \
#    tiny_swapon.te \
#    vdc.te \
#    volte_imcb.te \
#    volte_ua.te \
#    volte_stack.te \
#    wmt_loader.te \
#    icusbd.te \
#    xlog.te \
#    mobicore.te \
#    install_recovery.te \
#    program_binary.te \
#    genfs_contexts
#
#
#
#BOARD_SEPOLICY_UNION += \
#	adbd.te \
#	bluetooth.te \
#	bootanim.te \
##	clatd.te \
#	drmserver.te \
##	dhcp.te \
#	dnsmasq.te \
#	gpsd.te \
#	hci_attach.te \
#	healthd.te \
#	hostapd.te \
#	inputflinger.te \
#	init.te \
#	init_shell.te \
#	isolated_app.te \
#	keystore.te \
#	kernel.te \
#	lmkd.te \
#	logd.te \
#	mediaserver.te \
#	mtp.te \
#	nfc.te \
#	racoon.te \
#	radio.te \
#	rild.te \
#	runas.te \
#	sdcardd.te \
#	servicemanager.te \
#	shared_relro.te \
#	shell.te \
#	system_app.te \
#	system_server.te \
#	surfaceflinger.te \
#	tee.te \
#	ueventd.te \
#	uncrypt.te \
#	watchdogd.te \
#	wpa_supplicant.te 
#	wpa.te \
#	property.te \
#	property_contexts \
#	service.te \
#	dmlog.te \
#	MtkCodecService.te \
#	ppl_agent.te \
#	pvrsrvctl.te \
#	wifi2agps.te \
#	dex2oat.te \
#	emdlogger.te \
#	autokd.te \
#	ppp.te \
#	launchpppoe.te \
#	sbchk.te \
#	service_contexts \
#	ril-3gddaemon.te \
#	usbdongled.te \
#	zpppd_gprs.te \
#	md_ctrl.te \
#	cmddumper.te \
#	tunman.te 

PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Block based ota
# see http://review.cyanogenmod.org/#/c/78849/1/core/Makefile
BLOCK_BASED_OTA := false

# recovery
#TARGET_RECOVERY_INITRC := device/gionee/gionee6735_65c_l/recovery/init.mt6735.rc
TARGET_RECOVERY_FSTAB := device/gionee/gionee6735_65c_l/recovery/root/fstab.mt6735
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"

# use power button for selections in recovery
BOARD_HAS_NO_SELECT_BUTTON := true

# ________________________________________________TWRP_________________________________________________
#RECOVERY_VARIANT := twrp

TW_THEME := portrait_hdpi
# brightness settings (needs verification)
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_MAX_BRIGHTNESS := 255
# may be useful if we get graphical glitches
RECOVERY_GRAPHICS_USE_LINELENGTH := true
# in case of wrong color this needs modification
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
# if sdcard0 is a /data/media emulated one
RECOVERY_SDCARD_ON_DATA := true
# ntfs support? (needs much space..)
TW_INCLUDE_NTFS_3G := true
# we may need that if sdcard0 dont work
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
# name backup folders 'gionee6735_65c_l' and not after MTK's fake hardware ID
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# we have it and it's enforcing!
TWHAVE_SELINUX := true
#only add if kernel supports
#TW_INCLUDE_FUSE_EXFAT := true
#F2FS support (only activate if kernel supports)
#TARGET_USERIMAGES_USE_F2FS:=true
# encryption
TW_INCLUDE_CRYPTO := true
# Antiforensic wipe
BOARD_SUPPRESS_SECURE_ERASE :=  true
# CPU temp
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
