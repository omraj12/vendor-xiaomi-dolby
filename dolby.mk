PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/dolby

VENDOR_PATH := vendor/xiaomi/dolby

PRODUCT_COPY_FILES += \
    $(VENDOR_PATH)/etc/permissions/com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.dolby.dolbyui.xml \
    $(VENDOR_PATH)/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.motorola.motosignature.xml \
    $(VENDOR_PATH)/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/moto-checkin.xml \
    $(VENDOR_PATH)/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    $(VENDOR_PATH)/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(VENDOR_PATH)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml \
    $(VENDOR_PATH)/framework/com.motorola.motosignature.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/com.motorola.motosignature.jar \
    $(VENDOR_PATH)/framework/moto-checkin.jar:$(TARGET_COPY_OUT_SYSTEM)/framework/moto-checkin.jar \
	$(VENDOR_PATH)/system_ext/lib/libeffects.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libeffects.so \
    $(VENDOR_PATH)/system_ext/lib64/libeffects.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libeffects.so \
    $(VENDOR_PATH)/vendor/bin/hw/vendor.dolby.hardware.dms@1.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@1.0-service \
    $(VENDOR_PATH)/vendor/etc/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(VENDOR_PATH)/vendor/etc/init/vendor.dolby.hardware.dms@1.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@1.0-service.rc \
    $(VENDOR_PATH)/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(VENDOR_PATH)/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    $(VENDOR_PATH)/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    $(VENDOR_PATH)/vendor/lib/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@1.0.so \
    $(VENDOR_PATH)/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(VENDOR_PATH)/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(VENDOR_PATH)/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(VENDOR_PATH)/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    $(VENDOR_PATH)/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(VENDOR_PATH)/vendor/lib64/vendor.dolby.hardware.dms@1.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0-impl.so \
    $(VENDOR_PATH)/vendor/lib64/vendor.dolby.hardware.dms@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@1.0.so \
    $(VENDOR_PATH)/configs/media/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml \
    $(VENDOR_PATH)/configs/media/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml

BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# Build Apps

PRODUCT_PACKAGES += \
    MotoDolbyV3 \
    daxService \
    MotoSignatureApp \
    libldacBT_enc \
    libldacBT_abr \

# Property Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio_fx.current=dolby \
    ro.vendor.dolby.dax.version=DS1_2.2.0.0_r1=true \
    vendor.audio.dolby.ds2.enabled=true \
    vendor.audio.dolby.ds2.hardbypass=true