.PHONY:all clean

SRCS = $(wildcard *.c) # 自动筛选目录中的.c文件
OBJS = $(SRCS:.c=.o) 	# 替换.c后缀为.o 
BIN  = mp3
all: $(BIN)

$(BIN):$(OBJS)
	@echo "SRCS =$(SRCS)"
	@echo "OBJS =$(OBJS)"
	gcc -o $@ $^
%.o:%.c
	gcc -o $@ -c $^
clean:
	rm -f  $(BIN) $(OBJS)
