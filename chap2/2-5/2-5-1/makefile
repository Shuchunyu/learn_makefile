.PHONY:all
SRCS = player.c lcd.c usb.c media.c hello.h main.txt
OBJS = $(subst .c,.o,$(strip $(SRCS)))					# 文本函数 subst: 把.c换成.o     strip:去掉字符串前后的空格
DEPS = $(patsubst %.c,%.d,$(SRCS))						# patsbust: 模式匹配
DEPS2 = $(SRCS:.c=.d)									# 也是替换
FIND = $(findstring usb,$(SRCS))						# 查找字符串
FILTER = $(filter %.c %.h, $(SRCS))						# 过滤函数
all:
	@echo "OBJS = $(OBJS)"	
	@echo "DEPS = $(DEPS)"
	@echo "DEPS2 = $(DEPS2)"
	@echo "FIND = $(FIND)"
	@echo "FILTER = $(FILTER)"
