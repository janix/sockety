CC = cc
CFLAGS = -std=c99 -pedantic -Wall -v
objects = server client http_server http_client

#$(info $(objects))

all: $(objects)

$(objects):
	$(CC) $(CFLAGS) $@.c -o $@

clean:
	rm -rf build/*
 