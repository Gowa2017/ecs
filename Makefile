OS=$(shell uname -s)
SHARED= -fPIC --shared
ifeq ($(OS), Darwin)
SHARED := -fPIC -dynamiclib -Wl,-undefined,dynamic_lookup
endif

LUAECS_DIR=3rd/luaecs

LUA_DIR?=/usr/local/Cellar/lua/5.4.4

CFLAGS=-O2 -Wall
LDFLAGS=-I$(LUA_DIR)/include/lua -L$(LUA_DIR)/lib -llua


ecs.so: $(LUAECS_DIR)/luaecs.c
	echo $(OS)
	gcc $(CFLAGS) $(LDFLAGS) $(SHARED) -DTEST_LUAECS -o $@ $^ $(LUA_INC) $(LUA_LIB)


clean:
	rm -f ecs.so
