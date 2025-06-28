#!/bin/bash

# Port to listen for the "ping"
LISTEN_PORT=8080

# Function to handle the ping
handle_ping() {
    echo "Received ping on localhost:$LISTEN_PORT. Shutting down gracefully..."
    exit 0
}

# Trap SIGTERM to clean up properly
trap "echo 'Received SIGTERM, exiting...'; exit 1" SIGTERM

# Start listening for a "ping" on localhost
echo "Waiting for a ping on localhost:$LISTEN_PORT..."
while true; do
    echo -e "HTTP/1.1 200 OK\r\nContent-Length: 25\r\n\r\nHello World! I was pinged" | nc -l -p $LISTEN_PORT
    handle_ping
done
