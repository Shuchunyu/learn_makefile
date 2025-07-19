.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

BIN := $(addprefix /home/scy/Desktop/learn_makefile/chap3/3-4/, $(BIN))

LINK_OBJ_DIR = /home/scy/Desktop/learn_makefile/chap3/3-4/app/link_obj
$(shell mkdir -p $(LINK_OBJ_DIR))

LINK_OBJ := $(wildcard $(LINK_OBJ_DIR)/*.o)

OBJS := $(addprefix $(LINK_OBJ_DIR)/, $(OBJS))

LINK_OBJ += $(OBJS)


all: $(DEPS) $(OBJS) $(BIN)
ifneq ("$(wildcard $(DEPS))","")	
include $(DEPS)
endif
$(BIN):$(LINK_OBJ)
	gcc -o $@ $^
$(LINK_OBJ_DIR)/%.o:%.c 
	gcc -o $@ -c $(filter %.c,$^) 
%.d:%.c
	gcc -MM $^ | sed 's,\(.*\).o[ :]*,$(LINK_OBJ_DIR)/\1.o:,g' > $@
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS) $(LINK_OBJ)
