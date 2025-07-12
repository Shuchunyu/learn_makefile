
### 查看源文件的依赖文件（包含库文件）

gcc -M player.c	

### 不包含库文件

gcc -MM player.c


### 隐式规则

makefile 可以自动根据.c文件生成.o文件，所以可以不写 gcc -c a.c -o a.o

### 模式匹配

%.o:%.c
	gcc -c $^ -o $@

make中，每一行命令都会开启一个线程去执行。

以下写法可以让两条命令在同一个线程执行 通过 ;\ 可以连接多条命令
all:
	cd \;/
	pwd
