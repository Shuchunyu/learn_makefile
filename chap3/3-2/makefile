# 解决.h文件不在依赖的问题
.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)
BIN  = mp3
all: $(BIN) $(DEPS)
ifneq ("$(wildcard $(DEPS))","") 	# 如果.d文件已经存在，则包含.d文件	
include $(DEPS)						# .d文件中包含规则 lcd.o:lcd.c lcd.h    通过这种方式，.h加入到了依赖树，当.h更新时，也会导致目标更新
endif
$(BIN):$(OBJS)
	gcc -o $@ $^
%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)	# 在编译时，源文件只能有一个，此处由于include所在行，存在多个规则有相同目标，导致合并，把.h文件也加入到了编译命令引起报错
%.d:%.c								# 所以此处通过过滤的方式提取.c文件
	gcc -MM $^ > $@					# 自动生成.c文件的依赖，并保存到.d文件中
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS)
