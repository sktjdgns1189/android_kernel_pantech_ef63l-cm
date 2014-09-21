#!/bin/bash

rm include/linux/uapi_random.h include/linux/random.h include/trace/events/random.h drivers/char/random.c lib/random32.c
wget -O include/linux/uapi_random.h https://raw.githubusercontent.com/torvalds/linux/master/include/uapi/linux/random.h
wget -O include/linux/random.h https://raw.githubusercontent.com/torvalds/linux/master/include/linux/random.h
wget -O include/trace/events/random.h https://raw.githubusercontent.com/torvalds/linux/master/include/trace/events/random.h
wget -O drivers/char/random.c https://raw.githubusercontent.com/torvalds/linux/master/drivers/char/random.c
wget -O lib/random32.c https://raw.githubusercontent.com/torvalds/linux/master/lib/random32.c

sed -i -e 's/uapi\/linux\/random.h/linux\/uapi_random.h/g' include/linux/random.h

sed -i 's/[[:space:]]*$//' include/linux/uapi_random.h include/linux/random.h include/trace/events/random.h drivers/char/random.c lib/random32.c

make drivers/char/random.o lib/random32.o
