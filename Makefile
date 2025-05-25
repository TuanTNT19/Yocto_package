all: hello

hello: hello.o
	$(CC) $(CFLAGS) -o hello hello.o

clean:
	rm -f hello hello.o

%.o: %.c
	$(CC) $(CFLAGS) -c $<