# CS690_RPC Project 4
Riley Robinson
CS 690 Fall 2023

# RPC Installation Commands (For Ubuntu)
##Contains rpcgen
sudo apt install rpcsvc-proto

##For some headers
sudo apt-get install build-essential

##This enables the server to bind to the port.
sudo apt install rpcbind


#Server
To run the server, run the following command:

make run-server

OR 

make server
./bin/msg_server

# Client
To run the server, run the following command:


make run-client

OR
 
make client
./bin/printmsgRpc <Remote address <Your message here.>


