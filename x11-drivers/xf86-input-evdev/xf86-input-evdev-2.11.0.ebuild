# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit linux-info xorg-3

DESCRIPTION="Generic Linux input driver"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~loong ~m68k ~mips ppc ppc64 ~riscv sparc x86"

RDEPEND="
	>=x11-base/xorg-server-1.18[udev]
	dev-libs/libevdev
	sys-libs/mtdev
	virtual/libudev:="
DEPEND="
	${RDEPEND}
	>=sys-kernel/linux-headers-2.6
	x11-base/xorg-proto"

pkg_pretend() {
	if use kernel_linux ; then
		CONFIG_CHECK="~INPUT_EVDEV"
	fi
	check_extra_config
}
