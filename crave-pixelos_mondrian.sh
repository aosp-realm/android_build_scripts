/opt/crave/resync.sh && \
cd device/xiaomi/mondrian && git pull && cd - && cd vendor/xiaomi/mondrian && git pull && cd - && source build/envsetup.sh && lunch aosp_mondrian-ap3a-userdebug && make installclean && mka bacon
