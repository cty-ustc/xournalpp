INSTALLDIR=/home/jr/local/pkgs/xournalpp--github-jaijeet--jr-master--x86_64
MAKEOPTS="-j4"
BUILDDIR=build

# Note: -DCMAKE_BUILD_TYPE="Debug" will do gcc -g; -DCMAKE_BUILD_TYPE="Release" will strip debugging symbols
build:
	- mkdir $(BUILDDIR)
	(cd $(BUILDDIR) && cmake .. \
      -DCMAKE_INSTALL_PREFIX:PATH=$(INSTALLDIR) . && make $(MAKEOPTS))
.PHONY: build

install:
	(cd $(BUILDDIR) && make install)
.PHONY: install


clean:
	@ (cd build && make clean)
.PHONY: clean

cleanBuild:
	- rm -fr build
.PHONY: cleanBuild

cleanInstallation:
	- rm -fr $(INSTALLDIR)
.PHONY: cleanInstallation
