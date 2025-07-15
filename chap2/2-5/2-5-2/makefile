.PHONY:all
LIB = /home/hello/libhello.a
LIB1 = $(dir $(LIB))					# 获取目录
LIB2 = $(notdir $(LIB))					# 获取目录最后的文件
LIB3 = $(suffix $(LIB))					# 获取后缀 
LIB4 = $(basename $(LIB))				# 获取不带后缀
LIB5 = $(addsuffix .c,$(LIB4))			# 添加后缀
LIB6 = $(addprefix /usr/lib/,$(LIB2))	# 添加前缀
SRCS = $(wildcard *.c)					# 获取当前目录的.c文件
all:
	@echo "LIB1 = $(LIB1)"
	@echo "LIB2 = $(LIB2)"
	@echo "LIB3 = $(LIB3)"
	@echo "LIB4 = $(LIB4)"
	@echo "LIB5 = $(LIB5)"
	@echo "LIB6 = $(LIB6)"	
	@echo "SRCS = $(SRCS)"
