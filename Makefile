CC = cc
CFLAGS = -std=c99 -pedantic -Wall
objects = server client http_server http_client

$(shell mkdir build)

all: $(objects)

$(objects):
	$(CC) $(CFLAGS) $@.c -o build/$@

clean:
	rm -rf build/*
 