.PHONY:clean
libdll.so:dll.o
	gcc -o $@ -shared $^ 	# 生成动态库时，加上-shared参数
dll.o:dll.c
	gcc -o $@ -fPIC -c $^ 	# 在编译为动态库的目标文件时，要加上-fPIC
clean:
	rm libdll.so dll.o
