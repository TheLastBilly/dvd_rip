$(shell   mkdir -p bin)
trayopen: src/trayopen.c
	gcc -o bin/trayopen src/trayopen.c
