#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE="ccache ../toolchain/bin/aarch64-linux-gnu-"
export PLATFORM_VERSION=10

make exynos7870-j7xelte_defconfig
#make exynos7870-j7xelte_eur_open_00.dtb
#make exynos7870-j7xelte_eur_open_01.dtb
#make exynos7870-j7xelte_eur_open_02.dtb
#make exynos7870-j7xelte_eur_open_03.dtb
#make exynos7870-j7xelte_eur_open_04.dtb
#./tools/dtbtool arch/arm64/boot/dts/ -o arch/arm64/boot/dtb
make -j4
#rm -rf arch/arm64/boot/dts/*.dtb
