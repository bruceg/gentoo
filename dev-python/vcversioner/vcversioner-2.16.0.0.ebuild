# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 python3_{6,7} pypy3 )

inherit distutils-r1

DESCRIPTION="Use version control tags to discover version numbers"
HOMEPAGE="https://github.com/habnabit/vcversioner https://pypi.org/project/vcversioner/"
SRC_URI="mirror://pypi/v/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~ia64 ~m68k ~mips ppc ppc64 s390 sparc x86"
IUSE="test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
	"

# not included
RESTRICT=test

python_test() {
	py.test || die
}
