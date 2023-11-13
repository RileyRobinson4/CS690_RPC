
local: printmsg.c
	mkdir -p ./bin
	gcc printmsg.c -o ./bin/printmsg

run-local: local
	./bin/printmsg "Hello, there."

msg: msg.x
	mkdir -p ./bin
	rpcgen msg.x

client: printmsg.c msg msg_clnt.c
	gcc printmsgRpc.c msg_clnt.c -o ./bin/printmsgRpc -ltirpc -I /usr/include/tirpc

server: msg msg_proc.c msg_svc.c 
	gcc msg_proc.c msg_svc.c -o ./bin/msg_server -ltirpc -I /usr/include/tirpc

all: client server local

run-client: client
	./bin/printmsgRpc localhost "Hello, there."

run-server: server
	./bin/msg_server