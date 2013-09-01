# Performance test for Synchronous Sockets.
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

ifndef CXX
	CXX	= g++
endif

TARGETS		= client
CFLAGS		= -O2 -std=gnu++0x -ggdb -Wall -Werror
LDFLAGS		= -lpthread

all : $(TARGETS)

client : client.o
	$(CXX) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%.o : %.cc $(HEADERS)
	$(CXX) $(CFLAGS) -c $< -o $@

clean : FORCE
	rm -f *.o $(TARGETS)

FORCE :