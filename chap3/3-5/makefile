.PHONY:all clean
export BUILD_ROOT = $(shell pwd)
all:
	make -C lcd
	make -C usb
	make -C media
	make -C app

clean:
	rm -fr app/link_obj/*.o app/dep/*.d mp3
