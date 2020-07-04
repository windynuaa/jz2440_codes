#目录设置
BUILD_DIR	:= ./build
DEBUG_DIR	:= ./debug
DEPENDS_DIR	:= ./dependence
#烧录器配置
OFLASH  := ./oflash.exe
#编译器设置
TOOL_DIR :=../../tools/gcc/bin/
ARCH 	:=arm-none-linux-gnueabi-
CC   	:=$(TOOL_DIR)$(ARCH)gcc
LD		:=$(TOOL_DIR)$(ARCH)ld
OBJCOPY :=$(TOOL_DIR)$(ARCH)objcopy
OBJDUMP :=$(TOOL_DIR)$(ARCH)objdump
CFLAG   := -Werror -nostdlib -march=armv4
#文件设置
DST     := dev
OBJS    := start.o
OBJC    := led.o
DEPENDS := $(patsubst %.o,%.d,$(OBJC))

DEPENDS_FILES := $(patsubst %.d,$(DEPENDS_DIR)/%.d,$(DEPENDS))
DEPENDS_FILES := $(wildcard $(DEPENDS_FILES))
OBJ_BULIDS    := $(patsubst %.o,$(BUILD_DIR)/%.o,$(OBJS))
OBJ_BULIDC    := $(patsubst %.o,$(BUILD_DIR)/%.o,$(OBJC))


#主要目标
all:$(OBJ_BULIDS) $(OBJ_BULIDC)
	$(LD) -Ttext 0 $^ -o $(BUILD_DIR)/$(DST).elf
	$(OBJCOPY) -O binary -S $(BUILD_DIR)/$(DST).elf $(DST).bin
	$(OBJDUMP) -s $(BUILD_DIR)/$(DST).elf > $(DEBUG_DIR)/$(DST).hex
	$(OBJDUMP) -D $(BUILD_DIR)/$(DST).elf > $(DEBUG_DIR)/$(DST).asm

#配置环境
config: dirs
	@echo config finished
#建立目录
dirs:
	mkdir $(BUILD_DIR)
	mkdir $(DEBUG_DIR)
	mkdir $(DEPENDS_DIR)
#编译源文件
$(BUILD_DIR)/%.o:%.S
	$(CC) $< $(CFLAG) -c -o $@ 
$(BUILD_DIR)/%.o:%.c
	$(CC) $< $(CFLAG) -c -o $@ 
#清理
clean:
	rm $(BUILD_DIR)/*
	rm $(DEBUG_DIR)/* 
clean_dir:
	rmdir $(BUILD_DIR)
	rmdir $(DEBUG_DIR)
clean_all: clean clean_dir
	@echo clean finished

