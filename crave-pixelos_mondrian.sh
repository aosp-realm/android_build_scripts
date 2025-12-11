repo init --depth=1 --no-repo-verify -u https://github.com/PixelOS-AOSP/manifest.git -b fifteen --git-lfs -g default,-mips,-darwin,-notdefault
git clone https://github.com/aosp-realm/android_build_manifest.git -b mondrian-pos .repo/local_manifests
/opt/crave/resync.sh
repo forall -c 'git lfs pull'
source build/envsetup.sh
lunch aosp_mondrian-ap3a-userdebug
make installclean
mka bacon
