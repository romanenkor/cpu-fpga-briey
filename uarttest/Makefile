PROJECT = uart-test
OUTDIR = bin
LDSCRIPT = ../libs/briey.ld
CFLAGS +=  -O0 -g -MD -fstrict-volatile-bitfields
LDFLAGS += -march=rv32im -mabi=ilp32 -mcmodel=medany
LDFLAGS += -nodefaultlibs -nostdlib -nostartfiles -ffreestanding
LDFLAGS += -Wl,-Bstatic,-T,$(LDSCRIPT),-Map,bin/$(PROJ_NAME).map,--print-memory-usag,--gc-sections

INC += -I../libs/

all: $(OUTDIR)/$(PROJECT).elf $(OUTDIR)/$(PROJECT).hex

install: $(OUTDIR)/$(PROJECT).hex
	cp -f $(OUTDIR)/$(PROJECT).hex ../VexRiscv/src/main/ressource/hex/aestf.hex

clean:
	rm -f $(OUTDIR)/*

%.hex: %.elf
	riscv64-unknown-elf-objcopy -O ihex $^ $@

%.elf:
	riscv64-unknown-elf-gcc $(CFLAGS) $(LDFLAGS) $(INC) $(LIBS) \
    src/crt.s src/main.c -o $@
