.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
export HEAD_PATH = $(BUILD_ROOT)/inc
all:
	make -C lcd
	make -C usb
	make -C media
	make -C app
	make -C math

clean:
	rm -fr app/link_obj/*.o app/dep/*.d app/lib_obj/*.o mp3
	rm -rf lib/*.a
