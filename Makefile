CC=gcc
CFLAGS=-Wall -pthread -g
LIBS=
OBJS=bank.o options.o

PROGS= bank 

all: $(PROGS)

%.o : %.c
	$(CC) $(CFLAGS) -c $<

bank: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS) $(LIBS)

clean:
	rm -f $(PROGS) *.o *~

