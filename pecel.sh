#!/bin/bash
# rm -rf prebuilts/clang/host/linux-x86 
#rm -rf device/xiaomi/courbet
rm -rf hardware/qcom-caf/sm8150/display

# repo init -u https://github.com/PixelOS-AOSP/android_manifest.git -b sixteen-qpr2 --git-lfs
# /opt/crave/resync.sh || repo sync

#git clone https://github.com/askakarbit/device_xiaomi_courbet.git -b pixelos device/xiaomi/courbet
# git clone https://github.com/meloalfa159/device_xiaomi_sm6150-common.git -b lineage-23 device/xiaomi/sm6150-common
# git clone https://github.com/askakarbit/vendor_xiaomi_courbet.git vendor/xiaomi/courbet
# git clone https://github.com/meloalfa159/vendor_xiaomi_sm6150-common.git -b sedici vendor/xiaomi/sm6150-common
# git clone https://github.com/askakarbit/kernel_xiaomi_sm6150.git kernel/xiaomi/sm6150

# git clone https://github.com/AbuRider/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi
git clone https://github.com/meloalfa159/hardware_qcom-caf_sm8150_display.git -b patch-1 hardware/qcom-caf/sm8150/display
# git clone https://github.com/AbuRider/sign.git -b keys2 vendor/lineage-priv/keys

# git clone https://gitlab.com/crdroidandroid/android_device_xiaomi_miuicamera -b 16.0-courbet device/xiaomi/miuicamera-sweet
# git clone https://gitlab.com/crdroidandroid/proprietary_vendor_xiaomi_miuicamera -b 16.0-courbet vendor/xiaomi/miuicamera-sweet

export BUILD_USERNAME=askarbit
export BUILD_HOSTNAME=karbit

. build/envsetup.sh
breakfast courbet userdebug
make installclean
m pixelos
