.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

BIN := $(addprefix /home/scy/Desktop/learn_makefile/chap3/3-5/, $(BIN))

LINK_OBJ_DIR = $(BUILD_ROOT)/app/link_obj
$(shell mkdir -p $(LINK_OBJ_DIR))
DEP_DIR = $(BUILD_ROOT)/app/dep
$(shell mkdir -p $(DEP_DIR))


LINK_OBJ := $(wildcard $(LINK_OBJ_DIR)/*.o)
OBJS := $(addprefix $(LINK_OBJ_DIR)/, $(OBJS))
LINK_OBJ += $(OBJS)

DEPS :=$(addprefix $(DEP_DIR)/, $(DEPS))

all: $(DEPS) $(OBJS) $(BIN)
ifneq ("$(wildcard $(DEPS))","")	
include $(DEPS)
endif
$(BIN):$(LINK_OBJ)
	gcc -o $@ $^
$(LINK_OBJ_DIR)/%.o:%.c 
	gcc -o $@ -c $(filter %.c,$^) 
$(DEP_DIR)/%.d:%.c
	gcc -MM $(filter %.c, $^) | sed 's,\(.*\).o[ :]*,$(LINK_OBJ_DIR)/\1.o $@:,g' > $@
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS) $(LINK_OBJ)
