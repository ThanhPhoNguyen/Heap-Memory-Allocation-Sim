SRCS = src/
INCLUDE = include/
BIN = bin/

all:LinkedListAPI.o liblist.so

liblist.so: $(BIN)LinkedListAPI.o
	gcc -shared -fpic $(BIN)LinkedListAPI.o -o $(BIN)liblist.so

LinkedListAPI.o: $(SRCS)LinkedListAPI.c
	gcc -c -Iinclude $(SRCS)LinkedListAPI.c -o $(BIN)LinkedListAPI.o

