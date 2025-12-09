rm -rf .repo/local_manifests ## This must always be present to avoid crave manifest error

repo init --depth=1 --no-repo-verify -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs -g default,-mips,-darwin,-notdefault
/opt/crave/resync.sh

git clone --depth 1 -b lineage-23.0 https://github.com/Exynoobs/android_device_samsung_dm1q.git device/samsung/dm1q
git clone --depth 1 -b lineage-23.0 https://github.com/Exynoobs/android_device_samsung_sm8550-common.git device/samsung/sm8550-common
git clone --depth 1 -b lineage-23.0 https://github.com/Exynoobs/android_kernel_samsung_sm8550.git kernel/samsung/sm8550-common
git clone --depth 1 -b lineage-23.0 https://github.com/Exynoobs/proprietary_vendor_samsung_dm1q.git vendor/samsung/dm1q
git clone --depth 1 -b lineage-23.0 https://github.com/Exynoobs/proprietary_vendor_samsung_sm8550-common.git vendor/samsung/sm8550-common

source build/envsetup.sh
breakfast dm1q
croot
brunch dm1q
