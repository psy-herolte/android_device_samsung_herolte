# Inherit device configuration
$(call inherit-product, device/samsung/herolte/device_herolte.mk)
$(call inherit-product, device/samsung/hero-common/hero-common.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Validus stuff.
$(call inherit-product, vendor/validus/config/common_full_phone.mk)
$(call inherit-product, vendor/validus/config/caf_fw.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := validus_herolte
PRODUCT_DEVICE := herolte
PRODUCT_MODEL := SM-G930F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Psy After"

# custom
-include $(LOCAL_PATH)/custom.mk
