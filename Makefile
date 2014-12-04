Cflag=
LDflag=

all:		dhclient

dhclient:	dhclient.o dhcp.o net.o
			gcc $(LDflag) dhclient.o dhcp.o net.o -o dhclient

dhclient.o:	dhclient.c
			gcc $(Cflag) -c dhclient.c

dhcp.o:		dhcp.c dhcp.h
			gcc $(Cflag) -c dhcp.c

net.o:		net.c net.h
			gcc $(Cflag) -c net.c

clean:
			rm -f *.o

cleanall:   clean
			rm -f dhclient
