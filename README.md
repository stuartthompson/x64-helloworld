# x64 Assembler - Hello World

## Building and Running
Assemble object files and include debug symbols.
```
nasm -F dwarf -g -f elf64 helloworld.asm
```

Link the object files into an executable
```
ld -m elf_x86_64 -o helloworld helloworld.o
```

Run the application
```
./helloworld
```

## Inspecting the Object (verify debug symbols included)
Inspect the contents of the object file (to verify debug symbols are included)
```
objdump -e ./helloworld.o
```

## Debug the application (with symbols)
Debug the program and set breakpoints/step through
```
gdb ./helloworld
```

Type the following commands into gdb
```
break 11
run
stepi
continue
```

This will execute the program and let you inspect the state of the program as 
it is running.

The breakpoint set at line 11 is right before the syscall to write the greeting
to stdout.

Stepping one instruction lets you observe Hello, World! being written.