PREFIX = /usr/local
MANAGERS = share/mmmk

install:
	@echo installing executables to ${PREFIX}/bin
	mkdir -p ${PREFIX}/bin
	cp -f mmmk ${PREFIX}/bin
	@echo installing managers to ${PREFIX}/${MANAGERS}
	mkdir -p ${PREFIX}/${MANAGERS}
	cp managers/* ${PREFIX}/${MANAGERS}

uninstall:
	@echo removing executables from ${PREFIX}/bin
	rm -f ${PREFIX}/bin/mmmk
	@echo removing managers from ${PREFIX}/${MANAGERS}
	rm -rf ${PREFIX}/${MANAGERS}

.PHONY: install uninstall
