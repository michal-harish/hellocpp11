AC_PREREQ([2.68])
AC_INIT([hellocpp11], [0.1], [michal.harish@gmail.com])
AC_CONFIG_SRCDIR([src/main.cpp])
AC_CONFIG_AUX_DIR(aux-dist)
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_HEADERS([config.h])
PKG_CHECK_MODULES([DEPS], [rdkafka++ >= 0.9.1])

#require c++
AC_PROG_CXX  
AC_LANG([C++])
AX_CXX_COMPILE_STDCXX_11(, [optional])


#enable automake
AM_INIT_AUTOMAKE([1.11 subdir-objects -Wall -Werror])
AC_CONFIG_FILES([Makefile]) 

AC_OUTPUT


 


