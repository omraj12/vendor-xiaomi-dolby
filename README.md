# Standalone Moto Dolby

Clone this repo to vendor/xiaomi/dolby

### Add this line in your device.mk
```
$(call inherit-product, vendor/xiaomi/dolby/dolby.mk)
```

### Add this line in setup-makefiles.sh
```
write_makefiles "vendor/xiaomi/dolby/proprietary-files.txt" true
```

### Add these lines in audio_effects.xml
``` C
<library name="dap" path="libswdap.so"/>
<effect name="bassboost" library="bundle" uuid="8631f300-72e2-11df-b57e-0002a5d5c51b"/>
<effect name="virtualizer" library="bundle" uuid="1d4033c0-8557-11df-9f2d-0002a5d5c51b"/>
<effect name="equalizer" library="bundle" uuid="ce772f20-847d-11df-bb17-0002a5d5c51b"/>
<effect name="dap" library="dap" uuid="9d4921da-8225-4f29-aefa-39537a04bcaa"/>
``` 

### Add these files in BoardConfig.mk
``` C
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
DEVICE_MANIFEST_FILE += vendor/xiaomi/dolby/configs/hidl/manifest.xml
DEVICE_MATRIX_FILE += vendor/xiaomi/dolby/configs/hidl/compatibility_matrix.xml
```
