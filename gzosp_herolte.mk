# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/herolte/device_herolte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit some common gzosp stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)
#$(call inherit-product, vendor/gzosp/config/caf_fw.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_herolte
PRODUCT_DEVICE := herolte
PRODUCT_MODEL := SM-G930F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

DEFAULT_ROOT_METHOD := magisk

PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Psy After"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=heroltexx \
	PRIVATE_BUILD_DESC="heroltexx-user 8.0.0 R16NW G930FXXU2ERD5 release-keys"

# BUILD_FINGERPRINT := samsung/gzosp_herolte/herolte:8.1.0/OPM4.171019.016.B1/035cb79760:userdebug/release-keys
BUILD_FINGERPRINT := samsung/heroltexx/herolte:8.0.0/R16NW/G930FXXU2ERD5:user/release-keys

# custom
-include $(LOCAL_PATH)/custom.mk
