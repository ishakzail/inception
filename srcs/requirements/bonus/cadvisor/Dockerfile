FROM debian:buster

# Install dependencies
RUN apt-get update && apt-get install -y curl 

# Download and install Cadvisor
RUN curl -L https://github.com/google/cadvisor/releases/download/v0.35.0/cadvisor -o /usr/local/bin/cadvisor
RUN chmod +x /usr/local/bin/cadvisor

# Expose the Cadvisor port
EXPOSE 2000

# Run Cadvisor when the container starts
# CMD ["/usr/local/bin/cadvisor", "-logtostderr"]
ENTRYPOINT cadvisor -logtostderr --port=2000
