ACLOCAL_AMFLAGS = -I m4 --install
AM_CFLAGS = -Wall $(DEPS_CFLAGS) 
AM_CXXFLAGS = -std=c++11  
AM_LDFLAGS = $(DEPS_CFLAGS) -Wl,-rpath=
LDADD = $(DEPS_LIBS)

bin=./bin
bin_PROGRAMS=hellocpp11
hellocpp11_SOURCES=src/main.cpp src/func.cpp src/func.h



