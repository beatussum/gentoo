# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="A command line player/recorder for wav files"
HOMEPAGE="https://sourceforge.net/projects/wavplay/"
SRC_URI="https://downloads.sourceforge.net/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 x86"

PATCHES=( "${FILESDIR}/${PN}-2.0-pkgdata-install-fix.patch" )

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf --enable-nox
}
