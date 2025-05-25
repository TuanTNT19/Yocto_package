all: hellot

hellot: hellot.o
	$(CC) $(CFLAGS) ${LDFLAGS} -o hellot hellot.o

clean:
	rm -f hellot hellot.o

%.o: %.c
	$(CC) $(CFLAGS) -c $<