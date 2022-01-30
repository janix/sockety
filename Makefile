CC = cc
CFLAGS = -std=c99 -pedantic -Wall
objects = server client http_server http_client

all: $(objects)

$(objects): %: %.c
	$(CC) $(CFLAGS)  -o build/$@ $<

clean:
	rm -rf build/*
 