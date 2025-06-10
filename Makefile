# Makefile
CC = gcc
WARNING_FLAGS = -Wall -Wextra -Wshadow -Wpedantic -Wconversion
CFLAGS = $(WARNING_FLAGS)
DEBUG_FLAGS = -g -O0 $(WARNING_FLAGS)

# all: proxy # this the object
#
# proxy.o: proxy.c csapp.h
# 	$(CC) $(CFLAGS) -c proxy.c
#
# proxy: proxy.o
# 	$(CC) $(CFLAGS) $^ -o proxy
#
# gdb: proxy
# 	gdb -x .gdbinit
#
# test: proxy
# 	./proxy
	
clean:
	rm -f *~ *.o $(all)

