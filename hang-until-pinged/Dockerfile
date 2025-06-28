FROM alpine:latest

# Install necessary tools
RUN apk add --no-cache bash netcat-openbsd

# Copy the entrypoint script
COPY hang-until-pinged.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Expose the port you will listen on
EXPOSE 8080

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]