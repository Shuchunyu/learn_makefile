.PHONY:all

DEBUG = true
ifeq ($(DEBUG),true)  # 注意ifeq与(之间要有一个空格
VERSION = debug
CC = gcc -g
else
VERSION = release
CC = gcc
endif

hello:hello.c
	@echo "build $(VERSION) mode"
	$(CC) -o $@ $^
clean:
	rm hello
