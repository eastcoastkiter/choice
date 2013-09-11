#############################################################################
# Makefile for building: application
# Generated by qmake (2.01a) (Qt 4.7.4) on: Di 10. Sep 16:56:30 2013
# Project:  application.pro
# Template: app
# Command: c:\qt\4.7.4\bin\qmake.exe -spec ..\4.7.4\mkspecs\win32-g++ CONFIG+=release -o Makefile application.pro
#############################################################################

first: release
install: release-install
uninstall: release-uninstall
MAKEFILE      = Makefile
QMAKE         = c:\qt\4.7.4\bin\qmake.exe
DEL_FILE      = del
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
COPY          = copy /y
COPY_FILE     = $(COPY)
COPY_DIR      = xcopy /s /q /y /i
INSTALL_FILE  = $(COPY_FILE)
INSTALL_PROGRAM = $(COPY_FILE)
INSTALL_DIR   = $(COPY_DIR)
DEL_FILE      = del
SYMLINK       = 
DEL_DIR       = rmdir
MOVE          = move
CHK_DIR_EXISTS= if not exist
MKDIR         = mkdir
SUBTARGETS    =  \
		release \
		debug

release: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release
release-make_default: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release 
release-make_first: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release first
release-all: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release all
release-clean: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release clean
release-distclean: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release distclean
release-install: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release install
release-uninstall: $(MAKEFILE).Release FORCE
	$(MAKE) -f $(MAKEFILE).Release uninstall
debug: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug
debug-make_default: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug 
debug-make_first: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug first
debug-all: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug all
debug-clean: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug clean
debug-distclean: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug distclean
debug-install: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug install
debug-uninstall: $(MAKEFILE).Debug FORCE
	$(MAKE) -f $(MAKEFILE).Debug uninstall

Makefile: application.pro  ../4.7.4/mkspecs/win32-g++/qmake.conf ../4.7.4/mkspecs/qconfig.pri \
		../4.7.4/mkspecs/modules/qt_webkit_version.pri \
		../4.7.4/mkspecs/features/qt_functions.prf \
		../4.7.4/mkspecs/features/qt_config.prf \
		../4.7.4/mkspecs/features/exclusive_builds.prf \
		../4.7.4/mkspecs/features/default_pre.prf \
		../4.7.4/mkspecs/features/win32/default_pre.prf \
		../4.7.4/mkspecs/features/release.prf \
		../4.7.4/mkspecs/features/debug_and_release.prf \
		../4.7.4/mkspecs/features/default_post.prf \
		../4.7.4/mkspecs/features/win32/default_post.prf \
		../4.7.4/mkspecs/features/qt.prf \
		../4.7.4/mkspecs/features/win32/thread.prf \
		../4.7.4/mkspecs/features/moc.prf \
		../4.7.4/mkspecs/features/win32/rtti.prf \
		../4.7.4/mkspecs/features/win32/exceptions_off.prf \
		../4.7.4/mkspecs/features/win32/stl.prf \
		../4.7.4/mkspecs/features/static.prf \
		../4.7.4/mkspecs/features/warn_on.prf \
		../4.7.4/mkspecs/features/win32/windows.prf \
		../4.7.4/mkspecs/features/resources.prf \
		../4.7.4/mkspecs/features/uic.prf \
		../4.7.4/mkspecs/features/yacc.prf \
		../4.7.4/mkspecs/features/lex.prf \
		../4.7.4/mkspecs/features/include_source_dir.prf \
		c:/Qt/4.7.4/lib/qtmain.prl \
		c:/Qt/4.7.4/lib/QtGui.prl \
		c:/Qt/4.7.4/lib/QtNetwork.prl \
		c:/Qt/4.7.4/lib/QtCore.prl
	$(QMAKE) -spec ..\4.7.4\mkspecs\win32-g++ CONFIG+=release -o Makefile application.pro
..\4.7.4\mkspecs\qconfig.pri:
..\4.7.4\mkspecs\modules\qt_webkit_version.pri:
..\4.7.4\mkspecs\features\qt_functions.prf:
..\4.7.4\mkspecs\features\qt_config.prf:
..\4.7.4\mkspecs\features\exclusive_builds.prf:
..\4.7.4\mkspecs\features\default_pre.prf:
..\4.7.4\mkspecs\features\win32\default_pre.prf:
..\4.7.4\mkspecs\features\release.prf:
..\4.7.4\mkspecs\features\debug_and_release.prf:
..\4.7.4\mkspecs\features\default_post.prf:
..\4.7.4\mkspecs\features\win32\default_post.prf:
..\4.7.4\mkspecs\features\qt.prf:
..\4.7.4\mkspecs\features\win32\thread.prf:
..\4.7.4\mkspecs\features\moc.prf:
..\4.7.4\mkspecs\features\win32\rtti.prf:
..\4.7.4\mkspecs\features\win32\exceptions_off.prf:
..\4.7.4\mkspecs\features\win32\stl.prf:
..\4.7.4\mkspecs\features\static.prf:
..\4.7.4\mkspecs\features\warn_on.prf:
..\4.7.4\mkspecs\features\win32\windows.prf:
..\4.7.4\mkspecs\features\resources.prf:
..\4.7.4\mkspecs\features\uic.prf:
..\4.7.4\mkspecs\features\yacc.prf:
..\4.7.4\mkspecs\features\lex.prf:
..\4.7.4\mkspecs\features\include_source_dir.prf:
c:\Qt\4.7.4\lib\qtmain.prl:
c:\Qt\4.7.4\lib\QtGui.prl:
c:\Qt\4.7.4\lib\QtNetwork.prl:
c:\Qt\4.7.4\lib\QtCore.prl:
qmake: qmake_all FORCE
	@$(QMAKE) -spec ..\4.7.4\mkspecs\win32-g++ CONFIG+=release -o Makefile application.pro

qmake_all: FORCE

make_default: release-make_default debug-make_default FORCE
make_first: release-make_first debug-make_first FORCE
all: release-all debug-all FORCE
clean: release-clean debug-clean FORCE
distclean: release-distclean debug-distclean FORCE
	-$(DEL_FILE) Makefile

check: first

release-mocclean: $(MAKEFILE).Release
	$(MAKE) -f $(MAKEFILE).Release mocclean
debug-mocclean: $(MAKEFILE).Debug
	$(MAKE) -f $(MAKEFILE).Debug mocclean
mocclean: release-mocclean debug-mocclean

release-mocables: $(MAKEFILE).Release
	$(MAKE) -f $(MAKEFILE).Release mocables
debug-mocables: $(MAKEFILE).Debug
	$(MAKE) -f $(MAKEFILE).Debug mocables
mocables: release-mocables debug-mocables
FORCE:

$(MAKEFILE).Release: Makefile
$(MAKEFILE).Debug: Makefile