PRGS =  baseml codeml mcmctree infinitesites
CC = gcc
CFLAGS = -O3 -Wall -Wno-unused-variable -Wno-unused-result

LIBS = -lm

all : $(PRGS)

baseml : baseml.o tools.o treesub.c treespace.c paml.h
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@ baseml.o tools.o $(LIBS)
codeml: codeml.o tools.o treesub.c treespace.c paml.h
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@ codeml.o tools.o $(LIBS)
mcmctree: mcmctree.o tools.o treesub.c treespace.c paml.h
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o $@ mcmctree.c tools.o $(LIBS)

infinitesites: mcmctree.c tools.o treesub.c treespace.c paml.h
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -o infinitesites -D INFINITESITES mcmctree.c tools.o $(LIBS)

tools.o : paml.h tools.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -c tools.c
baseml.o : paml.h baseml.c treesub.c treespace.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -c baseml.c
codeml.o : paml.h codeml.c treesub.c treespace.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -c codeml.c
mcmctree.o : paml.h mcmctree.c treesub.c treespace.c
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS) -c mcmctree.c

clean :
	-rm *.o $(PRGS)
