echo 'Cloning Kernel Tree'
# Kernel Tree
git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_xiaomi_lmi.git -b Kitsune kernel/xiaomi/lmi

echo 'Cloning Vendor Tree'
# Vendor Tree
git clone --depth=1 https://github.com/ProjectElixir-Devices/vendor_xiaomi_lmi.git -b Tiramisu vendor/xiaomi/lmi

echo 'Clone Prebuilt Apps Repo'
# Prebuilt Apps
git clone --depth=1 https://gitlab.com/ZenkaBestia/device_xiaomi_lmi_prebuilt-apps -b main device/xiaomi/lmi-prebuilt-apps

echo 'Clone MIUI Camera Repo'
git clone --depth=1 https://github.com/ppooopppooo/vendor_xiaomi_lmi-miuicamera -b 13.0 vendor/xiaomi/lmi-miuicamera
