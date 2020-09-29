ifndef COMSPEC
	CLEAN =	(cd alib; $(MAKE) clean) && (cd csvfix; $(MAKE) clean) 
else
	CLEAN = cmd.exe /c "clean.cmd"
endif

default:
	@echo "make linux:    build for Linux"
	@echo "make windows:  build for Windows (untested)"
	@echo "make macos:    build for Mac OS  (untested)

windows:
	cmd.exe /c "mkdirs.cmd"
	cd alib && $(MAKE) windows
	cd csvfix && $(MAKE) windows

linux:
	find -type f -exec sed -i '/<windows.h>/d' {} \;
	mkdir -p alib/obj alib/lib csvfix/obj csvfix/bin
	cd alib; $(MAKE) linux
	cd csvfix; $(MAKE) linux

macos:
	find -type f -exec sed -i '/<windows.h>/d' {} \; || true
	mkdir -p alib/obj alib/lib csvfix/obj csvfix/bin
	cd alib; $(MAKE) linux CCTYPE=clang 
	cd csvfix; $(MAKE) linux CCTYPE=clang 

clean:
	$(CLEAN)
