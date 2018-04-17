FROM alpine

# Add this when compiling on linux
# RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

# Copy the binary
COPY ./hello .

# Run the command
CMD ./hello

# Expose port 8080.
EXPOSE 8080