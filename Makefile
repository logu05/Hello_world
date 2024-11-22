RM      = rm -f

default: all

all: Hello

Hello: hello.c
	$(CC) -o Hello hello.c

install: hello
	mkdir -p $(DESTDIR)/usr/bin
	cp -f $< $(DESTDIR)/usr/bin/

clean veryclean:
	$(RM) Hello
