
run-local: printmsg.c
	mkdir -p ./bin
	gcc printmsg.c -o ./bin/printmsg
	./bin/printmsg "Hello, there."

msg-rpc: msg.x
	rpcgen msg.x


run-rpc: printmsg.c msg-rpc
	mkdir -p ./bin
	gcc printmsgRpc.c msg_clnt.c -o ./binprintmsgeRpc -lnsl -I /usr/include/ntirpc
	gcc msg_proc.c msg_svc.c -o ./bin/msg_server -lnsl
	./bin/printmsgRpc "Hello, there."