rm -rf .repo/local_manifests && \
repo init --depth=1 --no-repo-verify -u https://github.com/AOSPA/manifest -b vauxite --git-lfs -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/aosp-realm/android_build_manifest.git -b apollo-vauxite .repo/local_manifests && \
/opt/crave/resync.sh && \
repo forall -c 'git lfs pull' ; \
export TZ=Asia/Manila ; \
./rom-build.sh
