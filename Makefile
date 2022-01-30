CC = cc
CFLAGS = -std=c99 -pedantic -Wall -arch=arm64
objects = server client http_server http_client

all: $(objects)

$(objects):
	$(CC) $(CFLAGS)  -o build/$@ $@.c

clean:
	rm -rf build/*
 