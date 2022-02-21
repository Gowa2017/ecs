Inspired by [luaecs](https://github.com/cloudwu/luaecs)  and [tiny-ecs](https://github.com/bakpakin/tiny-ecs) and [ecs-lua](https://github.com/prime31/ecs-lua.git)

# luaecs

This is not a complete ECS system, but a container of entity and components which only have datas.
It conceptly like a database, it have no information of your systems.
And, the data can in C memory or LuaState.It is efficient when the visit order for component is fixed, but random visit is not so good.

# tiny-ecs and ecs-lua

This two manage data in LuaState, and hava some assumption of systems.

