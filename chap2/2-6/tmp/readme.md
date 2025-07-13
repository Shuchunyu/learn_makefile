编译静态库的步骤
1.把.c编译为.o
	gcc -o hello.o -c hello.c
2.把.o文件打包为静态库
	ar rcs libhello.a hello.o	// libhello.a中，hello为静态库的名字
3.生成可执行文件
	gcc -o test main.c -L./ -lhello 	// -L后面指定库文件搜索路径	-l后面跟库的名字
