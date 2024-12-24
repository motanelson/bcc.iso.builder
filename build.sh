nasm mysys.s -o mysys.o
bcc -c -Md libdos.c -o libdos.a
bcc -x -i -L -Md mysys.c -o mysys.com
cat mysys.o mysys.com > mysys.bin
python3 linux.py
qemu-system-x86_64 -cdrom cd1.iso