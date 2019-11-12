# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from L530 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := claro
PRODUCT_DEVICE := L530
PRODUCT_MANUFACTURER := claro
PRODUCT_NAME := lineage_L530
PRODUCT_MODEL := L530

PRODUCT_GMS_CLIENTID_BASE := android-claro
TARGET_VENDOR := claro
TARGET_VENDOR_PRODUCT_NAME := L530
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sp9832e_fs097_go_project-user 8.1.0 OPM2.171019.012 33216 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Claro/L530/L530:8.1.0/OPM2.171019.012/33216:user/release-keys
