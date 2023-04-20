.PHONY: all makedirs install

all: makedirs install

makedirs:
	test -d $(DESTDIR)/usr/lib64/nagios/plugins || mkdir -m 0755 -p $(DESTDIR)/usr/lib64/nagios/plugins

install: makedirs
	install -m 0755 bin/check_yum $(DESTDIR)/usr/lib64/nagios/plugins/

