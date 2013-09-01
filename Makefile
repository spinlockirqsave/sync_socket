# Tempesta Anti-DDoS HTTP Accelerator (http://tempesta-http.net).
#
# Copyright (C) 2012-2013 NatSys Lab. (info@natsys-lab.com).
#
# This program is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License,
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, write to the Free Software Foundation, Inc., 59
# Temple Place - Suite 330, Boston, MA 02111-1307, USA.

EXTRA_CFLAGS = # -DDEBUG

obj-m = sync_socket.o
sync_socket-objs = proto.o sock.o

KVERSION = 3.6-rc7

all:
	make -C ../linux-$(KVERSION) M=$(PWD) modules

clean:
	make -C ../linux-$(KVERSION) M=$(PWD) clean

