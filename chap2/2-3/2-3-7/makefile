.PHONY:all

#export N = 3				# 参数传递方式2 export
N = 3
all:
	@echo "build...."
	cd test && make N=$(N) # 参数传递方式1 命令行方式
#	cd test && make
	make -C lcd 
