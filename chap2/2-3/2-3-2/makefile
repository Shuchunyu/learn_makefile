.PHONY:all

HELLO = Good
TIME = morning!
STRING := $(HELLO) $(TIME) # 使用=定义变量时，该变量使延迟展开变量，在执行阶段确定值，如果使用:=，则该变量是立即展开变量，在解析阶段确定变量值
$(info $(STRING))
TIME = afternoon!
$(info $(STRING))

all:
	@echo "done"
