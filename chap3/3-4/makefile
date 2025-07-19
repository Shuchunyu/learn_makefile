.PHONY:all clean

all:
	make -C lcd
	make -C usb
	make -C media
	make -C app

clean:
	rm -fr app/link_obj/*.o app/player.d mp3
	rm -fr  usb/usb.d
	rm -fr  lcd/lcd.d
	rm -fr  media/media.d
