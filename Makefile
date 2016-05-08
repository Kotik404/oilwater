#############################################################################
# Makefile for building: oilwater
# Generated by qmake (2.01a) (Qt 4.8.6) on: Sun May 8 14:17:08 2016
# Project:  oilwater.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt4/bin/qmake -o Makefile oilwater.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES) -std=c++11
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lglfw -lGL -lGLEW -lm -lXrandr -lXi -lX11 -lXxf86vm -lXinerama -lXcursor -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/x86_64-linux-gnu/qt4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = src/camera.cpp \
		src/geometry.cpp \
		src/initbuff.cpp \
		src/kernel.cpp \
		src/main.cpp \
		src/model.cpp \
		src/position.cpp \
		src/terminal.cpp \
		src/network.cpp 
OBJECTS       = camera.o \
		geometry.o \
		initbuff.o \
		kernel.o \
		main.o \
		model.o \
		position.o \
		terminal.o \
		network.o
DIST          = res/map_test/shaders/vert.glsl \
		res/map_test/shaders/frag.glsl \
		res/load_sprite_inside/shaders/vert.glsl \
		res/load_sprite_inside/shaders/frag.glsl \
		res/load_sprite_outside/shaders/vert.glsl \
		res/load_sprite_outside/shaders/frag.glsl \
		res/box_red/shaders/vert.glsl \
		res/box_red/shaders/frag.glsl \
		res/boom_test_sprite/shaders/vert.glsl \
		res/boom_test_sprite/shaders/frag.glsl \
		/usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		oilwater.pro
QMAKE_TARGET  = oilwater
DESTDIR       = 
TARGET        = oilwater

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: oilwater.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/shared.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile oilwater.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/modules/qt_phonon.pri:
/usr/share/qt4/mkspecs/modules/qt_webkit.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/shared.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile oilwater.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/oilwater1.0.0 || $(MKDIR) .tmp/oilwater1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/oilwater1.0.0/ && $(COPY_FILE) --parents src/camera.h src/geometry.h src/glmath.hpp src/initbuff.hpp src/kernel.h src/model.h src/position.h src/terminal.h src/network.h .tmp/oilwater1.0.0/ && $(COPY_FILE) --parents src/camera.cpp src/geometry.cpp src/initbuff.cpp src/kernel.cpp src/main.cpp src/model.cpp src/position.cpp src/terminal.cpp src/network.cpp .tmp/oilwater1.0.0/ && (cd `dirname .tmp/oilwater1.0.0` && $(TAR) oilwater1.0.0.tar oilwater1.0.0 && $(COMPRESS) oilwater1.0.0.tar) && $(MOVE) `dirname .tmp/oilwater1.0.0`/oilwater1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/oilwater1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all:
compiler_moc_header_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

camera.o: src/camera.cpp src/camera.h \
		src/glmath.hpp \
		src/position.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o camera.o src/camera.cpp

geometry.o: src/geometry.cpp src/geometry.h \
		src/glmath.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o geometry.o src/geometry.cpp

initbuff.o: src/initbuff.cpp src/initbuff.hpp \
		src/model.h \
		src/glmath.hpp \
		src/position.h \
		src/camera.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o initbuff.o src/initbuff.cpp

kernel.o: src/kernel.cpp src/model.h \
		src/glmath.hpp \
		src/position.h \
		src/camera.h \
		src/kernel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o kernel.o src/kernel.cpp

main.o: src/main.cpp src/model.h \
		src/glmath.hpp \
		src/position.h \
		src/camera.h \
		src/initbuff.hpp \
		src/kernel.h \
		src/terminal.h \
		src/network.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o src/main.cpp

model.o: src/model.cpp src/model.h \
		src/glmath.hpp \
		src/position.h \
		src/camera.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o model.o src/model.cpp

position.o: src/position.cpp src/position.h \
		src/glmath.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o position.o src/position.cpp

terminal.o: src/terminal.cpp src/terminal.h \
		src/kernel.h \
		src/model.h \
		src/glmath.hpp \
		src/position.h \
		src/camera.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o terminal.o src/terminal.cpp

network.o: src/network.cpp src/network.h \
		src/camera.h \
		src/glmath.hpp \
		src/position.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o network.o src/network.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
