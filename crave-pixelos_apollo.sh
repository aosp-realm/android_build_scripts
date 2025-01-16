rm -rf .repo/local_manifests ; \
repo init --depth=1 --no-repo-verify -u https://github.com/PixelOS-AOSP/manifest.git -b fifteen --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/aosp-realm/android_build_manifest.git -b apollo-pos15 .repo/local_manifests && \
/opt/crave/resync.sh && \
export BUILD_USERNAME=dogpoopy ; \
export BUILD_HOSTNAME=android-build ; \
export TZ=Asia/Manila ; \
repo forall -c 'git lfs pull' ; \
wget -O vendor/gms/common/proprietary/system_ext/priv-app/NexusLauncherRelease/NexusLauncherRelease.apk "https://sourceforge.net/projects/aosp-realm/files/NexusLauncherRelease.apk/download" && \
source build/envsetup.sh && \
lunch aosp_apollo-ap3a-user && \
make installclean ; \
mka bacon
