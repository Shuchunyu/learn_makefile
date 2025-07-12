.PHONY:clean		#显示指定伪目标 

#一条规则可以没有命令
all:test1 test2

#一条规则可以没有目标依赖
test:	
	@echo "Just for test"

#一条规则可以有多个目标
test1 test2:
	@echo "Just for test: $@"

#多规则目标 多个规则可以是同一个目标，make在解析时，会将多个规则的目标依赖合并
all1:test
all1:test1


hello:player.o lcd.o
	gcc  player.o lcd.o -o hello

%.o:%.c
	gcc -c $^ -o $@


#player.o:player.c
#	gcc -c player.c -o player.o

#lcd.o:lcd.c
#	gcc -c lcd.c -o lcd.o

clean:
	rm hello player.o lcd.o
