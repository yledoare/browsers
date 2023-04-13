ifeq (${MYPREFIX},"")
	echo "Myprofix not set !"
endif
DESTDIR		?= $(HOME)/.local
PREFIX		?= $(MYPREFIX)
all:
install:
	install -d $(DESTDIR)/$(PREFIX)/bin
	install -d $(DESTDIR)/$(PREFIX)/share
	cp bin/* $(DESTDIR)/$(PREFIX)/bin
	cp -fR share/* $(DESTDIR)/$(PREFIX)/share
