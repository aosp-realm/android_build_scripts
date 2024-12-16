rm -rf .repo/local_manifests ; \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingTechOSS/android -b fifteen -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/aosp-realm/android_build_manifest.git -b apollo-rising15 .repo/local_manifests && \
/opt/crave/resync.sh && \
export BUILD_USERNAME=dogpoopy ; \
export BUILD_HOSTNAME=android-build ; \
export TZ=Asia/Manila ; \
cd frameworks/base && git pull --unshallow ; git revert b2e083660120401e02ed1ac11397812bcebffc23 ; git revert ac3e43edfaafc2792654ffb483120c81d6ce9e54 ; cd ../../ && \
source build/envsetup.sh && \
riseup apollo user && \
rise b
