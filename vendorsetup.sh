echo 'Cloning Kernel Tree'
# Kernel Tree
git clone --depth=1 https://github.com/SkylineUI-Devices/kernel_xiaomi_lmi.git -b Kitsune kernel/xiaomi/lmi

echo 'Cloning Vendor Tree'
# Vendor Tree
git clone --depth=1 https://github.com/SkylineUI-Devices/vendor_xiaomi_lmi.git -b aosp-14 vendor/xiaomi/lmi

echo 'Clone Prebuilt Apps Repo'
# Prebuilt Apps
git clone --depth=1 https://gitlab.com/ZenkaBestia/device_xiaomi_lmi_prebuilt-apps -b main device/xiaomi/lmi-prebuilt-apps

echo 'Clone HALs Repo'
# Audio
rm -rf hardware/qcom-caf/sm8250/audio
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-21.0-caf-sm8250 hardware/qcom-caf/sm8250/audio
# Media
rm -rf hardware/qcom-caf/sm8250/media
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_media -b lineage-21.0-caf-sm8250 hardware/qcom-caf/sm8250/media
# Display
rm -rf hardware/qcom-caf/sm8250/display
git clone --depth=1 https://github.com/LineageOS/android_hardware_qcom_display -b lineage-21.0-caf-sm8250 hardware/qcom-caf/sm8250/display

echo 'Clone MIUI Camera Repo'
rm -rf vendor/xiaomi/lmi-miuicamera
git clone --depth=1 https://github.com/ZenkaBestia/vendor_xiaomi_lmi-miuicamera -b 14.0 vendor/xiaomi/lmi-miuicamera

echo "Download AOSP Clang 16.0.2"
wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/main/clang-r475365b.tar.gz
mkdir prebuilts/clang/host/linux-x86/clang-r475365b
tar -xvf clang-r475365b.tar.gz -C prebuilts/clang/host/linux-x86/clang-r475365b
rm clang-r475365b.tar.gz
