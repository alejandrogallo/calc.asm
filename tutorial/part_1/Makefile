NASM=nasm
CFLAGS=-f elf64
LINKER=ld
MAIN=hello_world
OBJ=$(MAIN).o

all: $(MAIN)

%.o: %.asm
	$(NASM) $(CFLAGS) -o $@ $<

$(MAIN): $(OBJ)
	$(LINKER) -o $(MAIN) $(OBJ)

.PHONY: clean
clean:
	rm *.o $(MAIN)
