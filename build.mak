# Sample makefile

all: server.exe client.exe http_server.exe http_client.exe

.c.obj:
  $(cc) $(cdebug) $(cflags) $(cvars) $*.c

server.exe: server.obj
  $(link) $(ldebug) $(conflags) -out:server.exe server.obj $(conlibs) lsapi32.lib

client.exe: client.obj
  $(link) $(ldebug) $(conflags) -out:client.exe client.obj $(conlibs) lsapi32.lib

http_server.exe: http_server.obj
  $(link) $(ldebug) $(conflags) -out:http_server.exe http_server.obj $(conlibs) lsapi32.lib

http_client.exe: http_client.obj
  $(link) $(ldebug) $(conflags) -out:http_client.exe http_client.obj $(conlibs) lsapi32.lib