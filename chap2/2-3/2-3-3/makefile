.PHONY:clean

OBJS = player.o lcd.o
BIN  = mp3
N = 1							#此处的N是全局变量
$(BIN): N = 2
$(BIN):$(OBJS)
	@echo "BIN: N = $(N)"
	gcc -o $(BIN) $(OBJS)
player.o:N= 3					#此处的N是目标变量，在该目标依赖的规则中有效
player.o:player.c
	@echo "player.o: N = $(N)"
	gcc -o player.o -c player.c
lcd.o:lcd.c
	@echo "lcd.o: N = $(N)"
	gcc -o lcd.o -c lcd.c
clean:
	@echo "clean: N = $(N)"
	rm -f  $(BIN) $(OBJS)
