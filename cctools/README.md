# Apple cctools port for Linux, *BSD and Windows (Cygwin) #

Current Version: 862 + ld64-241.9.  
Originally ported by [cjacker](http://ios-toolchain-based-on-clang-for-linux.googlecode.com).
Forked from https://github.com/tpoechtrager/cctools-port

## SUPPORTED HOSTS ##

**SUPPORTED OPERATING SYSTEMS:**

Linux, FreeBSD, NetBSD, OpenBSD, DragonFlyBSD,  
Windows (Cygwin), Mac OS X and iOS

**SUPPORTED HOST ARCHITECTURES:**

x86, x86_64, arm

Untested, but compiles:

aarch64, ppc, ppc64

## SUPPORTED TARGETS ##

armv4t, armv5, armv6, armv7, armv7f, armv7k, armv7s, armv6m  
armv7m, armv7em, armv8, arm64, arm64v8, i386, x86_64 and x86_64h.

## DEPENDENCIES ##

`Clang 3.2+ or gcc/g++/gcc-objc 4.5+`, `automake`, `autogen` and `libtool`.

On non-Mac OS X systems you also need to install:

`uuid-devel` and `openssl-devel`.

Optional, but recommended deps:

`llvm-devel` (Enables Link Time Optimization)

## INSTALLATION ##

* `cd cctools`
* `./autogen.sh`
* `./configure --prefix=<installdir> --target=<target> [--with-llvm-config=...]`
* `make`
* `make install`

target = `i386-apple-darwin11`, `x86_64-apple-darwin11`, `arm-apple-darwin11`, ...

If you get compile errors because of unistd.h, then please run
scripts/fix_unistd_issue.sh and restart compiling.
