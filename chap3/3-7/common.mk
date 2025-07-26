.PHONY:all clean

SRCS = $(wildcard *.c)
OBJS = $(SRCS:.c=.o)
DEPS = $(SRCS:.c=.d)

BIN := $(addprefix $(BUILD_ROOT)/, $(BIN))

LINK_OBJ_DIR = $(BUILD_ROOT)/app/link_obj
$(shell mkdir -p $(LINK_OBJ_DIR))
DEP_DIR = $(BUILD_ROOT)/app/dep
$(shell mkdir -p $(DEP_DIR))
LIB_OBJ_DIR = $(BUILD_ROOT)/app/lib_obj
$(shell mkdir -p $(LIB_OBJ_DIR))
LIB_DIR = $(BUILD_ROOT)/lib

OBJ_DIR = $(LINK_OBJ_DIR)
ifneq ("$(LIB)", "")
OBJ_DIR = $(LIB_OBJ_DIR)
endif

LINK_OBJ := $(wildcard $(LINK_OBJ_DIR)/*.o)
OBJS := $(addprefix $(OBJ_DIR)/, $(OBJS))
LINK_OBJ += $(OBJS)

DEPS :=$(addprefix $(DEP_DIR)/, $(DEPS))
LIB  :=$(addprefix $(LIB_DIR)/, $(LIB)) 

LIB_DEP = $(wildcard $(LIB_DIR)/*.a)
LINK_LIB_NAME = $(patsubst lib%, -l%, $(basename $(notdir $(LIB_DEP))))

all: $(DEPS) $(OBJS) $(BIN) $(LIB)
ifneq ("$(wildcard $(DEPS))","")	
include $(DEPS)
endif
$(BIN):$(LINK_OBJ) $(LIB_DEP)
	gcc -o $@ $^ -L$(LIB_DIR) $(LINK_LIB_NAME)
$(LIB):$(OBJS)
	@echo $(LIB)
	ar rcs $@ $^
$(OBJ_DIR)/%.o:%.c 
	gcc -o $@ -I$(HEAD_PATH) -c $(filter %.c,$^) 
$(DEP_DIR)/%.d:%.c
	gcc -I$(HEAD_PATH) -MM $(filter %.c, $^) | sed 's,\(.*\)\.o[ :]*,$(OBJ_DIR)/\1.o $@:,g' > $@
clean:
	rm -f  $(BIN) $(OBJS) $(DEPS) $(LINK_OBJ)
