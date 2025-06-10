# Makefile
CC = gcc
WARNING_FLAGS = -Wall -Wextra -Wshadow -Wpedantic -Wconversion
CFLAGS = $(WARNING_FLAGS)
DEBUG_FLAGS = -g -O0 $(WARNING_FLAGS)
VALGRIND_FLAGS = --tool=memcheck --leak-check=full --show-leak-kinds=all --track-origins=yes --log-file=valgrind_output.log

# NOTE: the final target object
# TARGET_EXEC := final_program
# DEBUG_EXEC := xxx_debug

# NOTE: specify the intermidate files here
# proxy.o: proxy.c csapp.h
# 	$(CC) $(CFLAGS) -c proxy.c
#

# NOTE: build target or debug
# TARGET_EXEC: ...
# 	$(CC) $(CFLAGS) $^ -o $@
#
# DEBUG_EXEC: ...
# 	$(CC) $(DEBUG_FLAGS) $^ -o $@

# NOTE: need to have .gdbinit
# gdb: $(DEBUG_EXEC)
# 	gdb -x .gdbinit

# NOTE: valgrind
# valgrind: $(DEBUG_EXEC)
# 	valgrind $(VALGRIND_FLAGS) ...
# 	nvim valgrind_output.txt

# NOTE: normal running
# run: $(TARGET_EXEC) 
# 	./$<
	
	
.PHONY: clean
clean:
	rm -f *~ *.o $(all)

