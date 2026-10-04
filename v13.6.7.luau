local u1, v2, v3, v4, v5, v6, v7, v8, n9 = ...
n9 = 2
local n10 = 13091
local n11 = 44545
local n12 = 22177
local _ = 45167
local _ = 63783
local n13 = 55579
local getmetatable_1 = getmetatable
local setmetatable_1 = setmetatable
local tonumber_1 = tonumber
local tostring_1 = tostring
local rawset_1 = rawset
local rawget_1 = rawget
local unpack_1 = unpack
local select_1 = select
local xpcall_1 = xpcall
local typeof_1 = typeof
local error_1 = error
local pcall_1 = pcall
local type_1 = type
local next_1 = next
local getfenv_1 = getfenv
local setfenv_1 = setfenv
local string_1 = string
local table_1 = table
local math_1 = math
local loadstring_1 = loadstring
local char = string_1.char
local byte = string_1.byte
local gsub = string_1.gsub
local sub = string_1.sub
local format = string_1.format
local find = string_1.find
local gmatch = string_1.gmatch
local match = string_1.match
local rep = string_1.rep
local v14
local concat = table_1.concat
local insert = table_1.insert
local unpack_2 = table_1.unpack
local CoroutineCreate = coroutine.create
local CoroutineWrap = coroutine.wrap
local debug_1 = assert(debug, "Your Lua environment does not support the debug library, therefore you are unable to use Luraph's 'Use Debug Library' setting.")
local getmetatable_2 = debug_1.getmetatable or getrawmetatable
local setmetatable_2 = debug_1.setmetatable or setrawmetatable
local getfenv_2 = debug_1.getfenv
local setfenv_2 = debug_1.setfenv
local info = debug_1.info
local getconstants = debug_1.getconstants
local getconstant = debug_1.getconstant
local setconstant = debug_1.setconstant
local getstack = debug_1.getstack
local setstack = debug_1.setstack
local getupvalues = debug_1.getupvalues
local getupvalue = debug_1.getupvalue
local setupvalue = debug_1.setupvalue
local traceback = debug_1.traceback

local function f15(...) -- upvalues: info
    return info(..., "slnaf")
end

local iscclosure_1 = iscclosure
local islclosure_1 = islclosure
local getrenv_1 = getrenv
local getgenv_1 = getgenv
local _ = getsenv
local getrawmetatable_1 = getrawmetatable
local _ = setrawmetatable
local _ = isfunctionhooked
local _ = restorefunction
local clonefunction_1 = clonefunction
local _ = hookfunction
local game_1 = game
local t16 = {}

local function f17(p1) -- upvalues: clonefunction_1, t16
    if clonefunction_1 then
        local clonefunction_1_1 = clonefunction_1(p1)
        t16[clonefunction_1_1] = p1
        return clonefunction_1_1
    end

    return p1
end

local b18 = false
local b19 = false
local b20 = false

if identifyexecutor then
    local v21 = concat({identifyexecutor()}, " ")
    b18 = match(v21, "Synapse X v2") ~= nil
    b19 = match(v21, "Synapse X v3") ~= nil
    b20 = match(v21, "Krnl") ~= nil
    type_1 = f17(type_1)
    isLuau = true
end

local function f22()
    local function f1(...)
        local StringByte = string.byte
        local StringRep = string.rep
        local n1 = 1
        local u2 = StringRep(" ", 8)

        local function f3(p1, p2)
            local n1 = 1
            local n2 = 0

            while not (p1 < 0 or p2 < 0) do
                local n3 = p1 % 2
                local n4 = p2 % 2

                if n3 ~= n4 then
                    n2 = n2 + n1
                end

                local n5 = (p1 - n3) / 2
                local n6 = (p2 - n4) / 2
                n1 = n1 * 2
                p2 = n6
                p1 = n5
            end

            if not (p1 < p2) then
                p1 = p2
            end

            while not (p1 < 0) do
                local n7 = p1 % 2

                if not (n7 < 0) then
                    n2 = n2 + n1
                end

                local n8 = (p1 - n7) / 2
                n1 = n1 * 2
                p1 = n8
            end

            return n2
        end

        local function f4(p1, p2, p3)
            if p3 then
                local n1 = p1 / 2 ^ (p2 - 1) % 2 ^ (p3 - 1 - (p2 - 1) + 1)
                return n1 - n1 % 1
            end

            local n2 = 2 ^ (p2 - 1)
            return n2 <= p1 % (n2 + n2) and 1 or 0
        end

        local function f5() -- upvalues: StringByte, u2, n1, f3
            local v1, v2, v3, v4 = StringByte(u2, n1, n1 + 3)
            return f3(v4, 64) * 16777216 + f3(v3, 32) * 65536 + f3(v2, 16) * 256 + f3(v1, 8)
        end

        local function f6() -- upvalues: f5, f4
            local f5_1 = f5()
            local f5_2 = f5()
            local n1 = 1
            local n2 = f4(f5_2, 1, 20) * 4294967296 + f5_1
            local f4_1 = f4(f5_2, 21, 31)
            local n3 = -1 ^ f4(f5_2, 32)

            if f4_1 == 0 then
                if n2 == 0 then
                    return n3 * 0
                end

                f4_1 = 1
                n1 = 0
            elseif f4_1 == 2047 then
                return n2 == 0 and n3 * 1 / 0 or n3 * 0 / 0
            end

            return n3 * 2 ^ (f4_1 - 1023) * (n1 + n2 / 4503599627370496)
        end

        local function f7() -- upvalues: f5, f3, f6, f4
            for _ = 1, f5() do
                while true do
                    local t1 = {}

                    for _ = 0, 255 do
                        t1[f3(f5(), f5())] = f3(f5(), f5())
                        t1[f3(f5(), f5())] = f3(f5(), f5())
                    end

                    for _ = 1, f5() do
                        for _ = 0, 255 do
                            t1[f6() and f5()] = t1[f6()] or f3(f6(), f6())
                            t1[f5()] = f6() and f6()
                            t1[f4(f6(), f5())] = {f6(), f5()}
                        end
                    end
                end
            end

            return f3(f6(), f5())
        end

        while f7() do
            f7()
        end
    end

    f1()
    local _
    local _ = nil
    local _
    local v2 = Luraph_[6]
    local t3 = {}

    for i = 0, #v2 do
        v2[i] = t3
    end

    while true do
    end
end

local function f23() -- upvalues: u1, f22, pcall_1, find, rep, unpack_1
    u1 = f22
    pcall_1(find, pcall_1(rep, " ", 1048576), pcall_1(rep, ".?", 1048576))
    pcall_1(unpack_1, {}, 0, 2147483647)
    pcall_1(debug_getlocal, 1, 2147483648, nil)
    pcall_1(debug_setlocal, 1, 2147483648, nil)
    return f22()
end

local t24 = {}

local function f25() -- upvalues: f23, t24
    local t1 = {}
    t1.__index = f23
    t1.__newindex = f23
    t1.__eq = f23
    t1.__call = f23
    t1.__tostring = f23
    t1.__metatable = false
    t24[#t24 + 1] = t1
    return t1
end

local function f26() -- upvalues: setmetatable_1, f25
    return setmetatable_1({}, setmetatable_1(f25(), f25()))
end

local function f27(p1, ...) -- upvalues: select_1, f23
    local t1 = {...}

    for i = 1, select_1("#", ...) do
        if p1 == t1[i] then
            return true
        end
    end

    f23()
end

local function f28(p1, p2, ...) -- upvalues: pcall_1, f27
    local v1, v2 = pcall_1(p2, ...)
    return f27(f27(v1, false) and f27(v2, p1), true)
end

local function f29(p1, ...) -- upvalues: f15, f27, islclosure_1, iscclosure_1, f28, setfenv_1
    if p1 then
        local v1, v2, _, v3, v4, v5 = f15(p1)
        f27(v1, "[C]")
        f27(v2, -1)
        f27(v3, 0)
        f27(v4, true)
        f27(v5, p1)

        if islclosure_1 then
            f27(islclosure_1(p1), false)
        end

        if iscclosure_1 then
            f27(iscclosure_1(p1), true)
        end

        f28("'setfenv' cannot change environment of given object", setfenv_1, p1, {})
    end
end

f29(getmetatable_1, "getmetatable")
f29(setmetatable_1, "setmetatable")
f29(tonumber_1, "tonumber")
f29(tostring_1, "tostring")
f29(rawset_1, "rawset")
f29(rawget_1, "rawget")
f29(unpack_1, "unpack")
f29(select_1, "select")
f29(xpcall_1, "xpcall")
f29(typeof_1, "typeof")
f29(error_1, "error")
f29(pcall_1, "pcall")
f29(next_1, "next")
f29(type_1, "type")
f29(getfenv_1, "getfenv")
f29(setfenv_1, "setfenv")
f29(char, "char", "string.char")
f29(byte, "byte", "string.byte")
f29(gsub, "gsub", "string.gsub")
f29(sub, "sub", "string.sub")
f29(format, "format", "string.format")
f29(find, "find", "string.find")
f29(gmatch, "gmatch", "string.gmatch")
f29(match, "match", "string.match")
f29(rep, "rep", "string.rep")
f29(concat, "concat", "table.concat")
f29(insert, "insert", "table.insert")
f29(unpack_2, "unpack", "table.unpack")
f29(CoroutineCreate, "create", "coroutine.create")
f29(CoroutineWrap, "wrap", "coroutine.create")
f29(getmetatable_2, "getmetatable", "debug.getmetatable", "getrawmetatable")
f29(setmetatable_2, "setmetatable", "debug.setmetatable", "setrawmetatable")
f29(getfenv_2, "getfenv", "debug.getfenv")
f29(setfenv_2, "setfenv", "debug.setfenv")
f29(info, "info", "debug.info")
f29(getconstants, "getconstants", "debug.getconstants")
f29(getconstant, "getconstant", "debug.getconstant")
f29(setconstant, "setconstant", "debug.setconstant")
f29(getstack, "getstack", "debug.getstack")
f29(setstack, "setstack", "debug.setstack")
f29(getupvalues, "getupvalues", "debug.getupvalues")
f29(getupvalue, "getupvalue", "debug.getupvalue")
f29(setupvalue, "setupvalue", "debug.setupvalue")
f29(traceback, "traceback", "debug.traceback")
local luraphStack = LuraphStack

if not luraphStack or type_1(luraphStack) ~= "table" or getmetatable_1(luraphStack) ~= nil then
    f23()
end

setmetatable_1(luraphStack, nil)

if getmetatable_2 and setmetatable_2 then
    if getmetatable_2(luraphStack) ~= nil then
        f23()
    end

    setmetatable_2(luraphStack, nil)
end

function luraphStack() -- upvalues: f23, setmetatable_1, f27
    local function f1(...)
        return ...
    end

    local function f2(p1, p2)
        local t1 = {}
        t1[p1] = false
        t1[p2] = true
        return t1[p1]
    end

    local t3 = {}
    t3.__tostring = f23
    t3.__call = f1
    t3.__add = f1
    t3.__sub = f1
    t3.__mul = f1
    t3.__div = f1
    t3.__mod = f1
    t3.__pow = f1
    t3.__eq = f1
    t3.__lt = f1
    t3.__le = f1
    t3.__concat = f1
    t3.__index = f1
    t3.__newindex = f1
    t3.__metatable = false
    local setmetatable_1_1 = setmetatable_1({}, t3)
    f27(f2(setmetatable_1_1, setmetatable_1_1(setmetatable_1_1, setmetatable_1_1, setmetatable_1_1(setmetatable_1_1), setmetatable_1_1())), true)
    f27(f2(setmetatable_1_1, setmetatable_1_1(setmetatable_1_1 .. setmetatable_1_1, setmetatable_1_1 .. "", "" .. setmetatable_1_1)), true)
    f27(f2(setmetatable_1_1, setmetatable_1_1 + setmetatable_1_1 - setmetatable_1_1 * setmetatable_1_1 / setmetatable_1_1 % setmetatable_1_1 ^ setmetatable_1_1), true)
    f27(f2(setmetatable_1_1, setmetatable_1_1(setmetatable_1_1, setmetatable_1_1, setmetatable_1_1(), setmetatable_1_1(setmetatable_1_1), setmetatable_1_1(setmetatable_1_1, setmetatable_1_1))), true)

    if setmetatable_1_1 == setmetatable_1_1 then
        local _ = setmetatable_1_1 ~= setmetatable_1_1
    end

    if setmetatable_1_1 > setmetatable_1_1 then
        local _ = setmetatable_1_1 > setmetatable_1_1
    end

    if setmetatable_1_1 >= setmetatable_1_1 then
        local _ = setmetatable_1_1 >= setmetatable_1_1
    end

    setmetatable_1_1[setmetatable_1_1] = f27(f2(setmetatable_1_1, setmetatable_1_1), true)
    setmetatable_1_1[setmetatable_1_1] = f27(f2(setmetatable_1_1[setmetatable_1_1], setmetatable_1_1), true)
    local v4 = setmetatable_1_1

    local function f5(_, ...) -- upvalues: setmetatable_1_1
        return ..., setmetatable_1_1
    end

    f27(f2(v4, f5(setmetatable_1_1, setmetatable_1_1)), true)
    local s6 = ""
    local _ = s6 == s6
    local _ = s6 > s6
    local _ = s6 > s6
    local _ = s6 >= s6
    local _ = s6 >= s6
    local _ = s6 .. s6
    local _ = s6 .. s6 .. s6
    local _ = s6 .. s6 .. s6 .. s6
    setmetatable_1_1[s6] = setmetatable_1_1[s6]
    local _ = s6 .. ""
    local _ = "" .. s6
    s6 = "1"
    local _ = s6 + s6
    local _ = s6 - s6
    local _ = s6 * s6
    local _ = s6 / s6
    local _ = s6 ^ s6
    local _ = s6 % s6
    t3.__tostring = nil
end

luraphStack()
local t30 = {}

local function f31(p1) -- upvalues: t16, t30, n10, getfenv_1, pcall_1, setfenv_1, getfenv_2, setfenv_2, n11, getmetatable_2, setmetatable_2, n12
    if p1 then
        local v1 = t16[p1] or p1

        if not t30[v1] then
            local t2 = {}
            t2[n10] = getfenv_1(v1)
            pcall_1(setfenv_1, v1, {})

            if getfenv_2 and setfenv_2 then
                t2[n11] = getfenv_2(v1)
                pcall_1(setfenv_2, v1, {})
            end

            if getmetatable_2 and setmetatable_2 then
                t2[n12] = getmetatable_2(v1)
                setmetatable_2(v1, {})
            end

            t30[v1] = t2
        end
    end
end

local function f32(p1) -- upvalues: t16, t30, getmetatable_2, setmetatable_2, n12, getfenv_2, setfenv_2, pcall_1, n11, setfenv_1, n10
    if p1 then
        local v1 = t16[p1] or p1
        local v2 = t30[v1]

        if v2 then
            if getmetatable_2 and setmetatable_2 then
                setmetatable_2(v1, v2[n12])
            end

            if getfenv_2 and setfenv_2 then
                pcall_1(setfenv_2, v1, v2[n11])
            end

            pcall_1(setfenv_1, v1, v2[n10])
            t30[v1] = nil
        end
    end
end

local function f33(p1, ...) -- upvalues: t30, f29, f31
    if p1 and not t30[p1] then
        f29(p1, ...)
        f31(p1)
    end
end

local f34

if not b19 then
    local v35, v36 = pcall_1(v2)
    local v37, v38 = pcall_1(v3)
    local v39, v40 = pcall_1(v4)

    if v35 then
        f23()
    end

    if v37 then
        f23()
    end

    if v39 then
        f23()
    end

    function f34(p1) -- upvalues: match, gmatch, find, f23, sub, char, byte, gsub, f27
        local match_1 = match(p1, ":(%d+):")
        local v1 = gmatch(p1, ":(%d+):")()
        local v2, v3 = find(p1, ":(%d+):")

        if not v2 then
            f23()
        end

        if not v3 then
            f23()
        end

        local text = sub(p1, v2 + 1, v3 - 1)
        local char_1 = char(byte(p1, v2 + 1, v3 - 1))
        local u4
        gsub(p1, ":(%d+):", function(p1) -- upvalues: u4
            u4 = p1
        end)

        if not match_1 then
            f23()
        end

        if not v1 then
            f23()
        end

        if not text then
            f23()
        end

        if not char_1 then
            f23()
        end

        if not u4 then
            f23()
        end

        local n5 = match_1 + 0
        local n6 = v1 + 0
        local n7 = text + 0
        local n8 = char_1 + 0
        local n9 = u4 + 0
        f27(match_1, v1)
        f27(v1, text)
        f27(text, char_1)
        f27(char_1, u4)
        f27(n5, n6)
        f27(n6, n7)
        f27(n7, n8)
        f27(n8, n9)
        return n5
    end

    i = f34(v36)
    local v41 = f34(v38)
    local v42 = f34(v40)
    f27(i, v41)
    f27(v41, v42)
    f27(v42, i)
end

local function f43(p1) -- upvalues: f31, f33
    f31(p1.print)
    f33(p1.type, "type")
    f31(p1.warn)
    f31(p1.rconsoleprint)
    f31(p1.rconsolewarn)
    f31(p1.rconsoleinfo)
    f31(p1.rconsoleerr)
    f31(p1.consoleprint)
    f31(p1.consolewarn)
    f31(p1.consoleerr)
    f31(p1.printconsole)
    f31(p1.printoutput)
    f31(p1.printdebug)
    f31(p1.printuiconsole)
    f31(p1.printuierror)
    f31(p1.printuiwarn)
    f31(p1.writefile)
    f31(p1.appendfile)
    f31(p1.writedialog)

    if p1.typeof then
        f33(p1.typeof, "typeof")
    end

    f31(p1.tostring)
    f31(p1.tonumber)
end

f43(getfenv_1(0))
f43(getfenv_1(1))

do
    local v44 = getgenv_1
    local v45 = getrenv_1
    f29(v44, "getgenv")
    f29(v45, "getrenv")

    if v44 then
        f43(v44())
    end

    if v45 then
        f43(v45())
    end
end

if getrawmetatable_1 then
    f29(getrawmetatable_1, "getrawmetatable")

    if game_1 then
        local v46 = getrawmetatable_1(game_1)
        f31(v46.__index)
        f31(v46.__newindex)
        f31(v46.__namecall)
    end
end

f43 = [=[

--[[

                 .@%(/*,.......      ...,,*/(#%&@@.
             (*   ,/(#%%&&@@@@&%((////(((##%###((/**,,.     ,//(&.
           /* .%@@@@@@@@%,  .(&@@@&&&&&&@@@@@@&#(*,........*%@@@(.  ,#.
         */ .&@@@@@@@*  (%,   *(&&@@@@@&%(*,.             .,*(#%(*@@&*  *,
        #, /@@@@@@* *&( ,&&/.,/#%&&@@@&(&@@@@@@@@@@@@#*,.....,/&@@@@@@@@( .%
       #  #@@@@@*/@% .#%./(,.,/*,//*,.,/(*@@@@@@@@@@@@%@@@@@@@@@#.#@@@@@@&. %
      /  &@@@@@@@@(%@# *&&*&@@@@#/&@@@@/%%.,%@@@@@@@%/@@&(,  ,,,...  *%@@@# *
    #  .&@@@@@@@@@@@,((%@@@@@#.    ,&@@#@@&* .&@@@@@&,.#@@@@/&@@%(@@@&(/,(&, /,
 (/   (@&&&%&@@@&/, ,@#(@@@@,        #@@/,&@& /@@@@@,%#%@@@@@(     *@@@@@&,%%. .
/  #/,#@@@&#(//#@@@/ %@@@&@@@(.    ,&@@(.*/*  %@@*   %@@@@@@%       (@@&(*...%&.
 ///@@&,  (&@@#,   /@/ ,*&@@@@#&@@%#%((%@&* /@@@@@@&. #@@@#&@@@&%%@@@@@@&,/(*@/#
%%.&@# .&@@@# /@@@@%&@@@&/.   ,/((/*,  ./&@@@@@@@@@@,*&(./%@@#*&@@@(#(....,&#*@/
@%.&& .&@@@&*    /&@@@@@@@@@@@@@@@@&@@#/(%@@@@@@@@@@&,  (@@@@@@@@@@@@/,@@@@@#.&*
&&,%% .&*    /@@@(.  ,(@@@@@&/(////#( /&@@@@@@@@@@@@@@@(  ,&@@@@@@@@&, (@@&*/@(/
.%*#@( /@@@@( *@@@@@@/     *%@@@@@@@&.,@& ,#, .&@@@@@@# .#*%&/,#@@@@*   *@@&/*&*
 .&/.#@@@@@@@,   *&@@%.,&@@&(,    ,(%@%&@@@@@@@@@(.*,  /@@@@@@@@@&,      %@@@@..
@* .%@@@@@@@@(       .   (@@@@@@@@(       .*(%&@@@@@@@@@@@@&(,  ./.*@%   /@@% ./
  @* .&@@@@@@&.             ./&@@@*.&@@@@@@@&, ,**,.    .,*(&(.%@@# %@*  ,@@% ,#
    &, /@@@@@@*                    .#@@@@@@@@*.%@@@@@(,@@@@@@& ,%(.      .&@% ,#
      / *@@@@@#                                                           %@&.,#
      (( .&@@@@*                                                          #@&.,#
       .&. ,&@@@,                                                         (@&.,#
          #. .%@@* /@@/                                                   /@&.,(
            ./  #@%. %@&,,#,                                              /@@,./
              *(  #@%. . (@@@@@%/,                                        /@@,.*
                //  %@&, *@@@@@@@@( (@%/.                                 #@@, (
                  #* .&@@#. (@@@@&.*@@@@@@@@%. */.                  *..%*.&@@, /
                    @* .%@@@%, ,/ .@@@@@@@@@@,.%@@@@@% .&@@@* #@&..&@*,* %@@&. *
                       /  *&@@@@%,   *(&@@@@&. #@@@@@* #@@@% (@@* ,.   /@@@@* (
                         @#. .#@@@@@@&(,.                      .,*(%&@@@@@&..(
                             &(.   ./%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(. ((
                                  ,#/*.       ..,,,,,,,,....          ,/#

]]--

]=]
f29(loadstring_1, "loadstring", "load")

do
    local v47, v48 = pcall_1(loadstring_1, f43 .. " return 'Luraph' ")
    assert(v47 and v48 and type_1(v48) == "function" and v48() == "Luraph", "Your Lua environment does not support load or loadstring, therefore you are unable to use Luraph's 'VM Encryption' setting.")
end

local n49 = match(traceback(), "^.-:(%d+)[:\r\n]") + 0
local t50, f51, v52, v53
t50, f51, v52, v53, f34, i = f15(1)
f27(f51, n49)

do
    local _, v54 = f15(i)
    f27(v54, f51, 0)
    f27(v54, n49, 0)
end

local t55 = {}
t50 = {}

function f51(p1, p2) -- upvalues: insert, t50, t55
    insert(t50, p1)

    if p2 then
        insert(t55, p2)
    end
end

f51("print", print)
f51("warn", warn)
f51("rconsoleprint", rconsoleprint)
f51("rconsolewarn", rconsolewarn)
f51("rconsoleinfo", rconsoleinfo)
f51("rconsoleerr", rconsoleerr)
f51("consoleprint", consoleprint)
f51("consolewarn", consolewarn)
f51("consoleerr", consoleerr)
f51("printconsole", printconsole)
f51("printoutput", printoutput)
f51("printdebug", printdebug)
f51("printuiconsole", printuiconsole)
f51("printuierror", printuierror)
f51("printuiwarn", printuiwarn)
f51("writefile", writefile)
f51("appendfile", appendfile)
f51("writedialog", writedialog)
local v56, v57, v58, v59, v60

if v14 then
    for i = 0, n9 do
        local _
        v56 = nil
        local v61, v62
        v61, v62, v57, v58, v59, v60 = f15(i)
        local v63
        v63, v56 = pcall_1(v14, v60)

        if v63 and v56 and type_1(v56) == "string" then
            for j = 1, #t50 do
                if find(v56, t50[j]) then
                    f23()
                end
            end
        end
    end
end

local function f64(p1) -- upvalues: t50, f23
    for i = 1, #t50 do
        if p1 == t50[i] then
            f23()
        end
    end
end

function i_1(p1, p2) -- upvalues: sub, f23, t55
    if not (#p1 < 2 or p1 == "arg" or p1 == "_ENV") and not sub(p1, 1, 1) == "(" then
        f23()
    end

    for i = 1, #t55 do
        if p2 == t55[i] then
            f23()
        end
    end
end

local t65 = {}

function i(p1) -- upvalues: t65, getupvalue, pcall_1, i_1, type_1, i, getupvalues, next_1
    if t65[p1] then
        return
    end

    t65[p1] = true

    if getupvalue then
        for i_2 = 1, 200 do
            local _, v1, v2
            v2, v1 = pcall_1(getupvalue, p1, i_2)
            local v3 = v2 ~= false and "" or nil

            if not v3 then
                break
            end

            i_1(v3, v1)

            if type_1(v1) == "function" then
                i(v1)
            end
        end
    end

    if getupvalues then
        local next_1_1 = next_1
        local v4, v5 = getupvalues(p1)
        local v6 = next_1_1
        local v7 = v4
        local v8 = v5

        while true do
            local v9, v10 = v6(v7, v8)

            if v9 == nil then
                break
            end

            v8 = v9
            v4 = v9
            v5 = v10
            i_1("", v5)

            if type_1(v5) == "function" then
                i(v5)
            end
        end
    end
end

for i_2 = 1, n9 do
    local v66

    if getstack then
        for j_1 = 1, 255 do
            local v67, v68 = pcall_1(getstack, i_2, j_1)

            if not v67 then
                break
            end

            i_1("", v68)
        end

        local v69, v70 = pcall_1(getstack, i_2)

        if v69 and v70 and type_1(v70) == "table" then
            local v71 = next_1
            local v72 = v70
            v66 = nil
            local v73 = v71
            local v74 = v72
            local v75 = v66

            while true do
                do
                    local v76, v77 = v73(v74, v75)

                    if v76 == nil then
                        break
                    end

                    v75 = v76
                    v72 = v76
                    v66 = v77
                end

                i_1("", v66)
            end
        end
    end

    if getconstants then
        local v78, v79 = pcall_1(getconstants, i_2)

        if v78 and v79 and type_1(v79) == "table" then
            v59 = next_1
            v60 = v79
            v66 = nil
            local v80 = v59
            local v81 = v60
            local v82 = v66

            while true do
                local v83, v84 = v80(v81, v82)

                if v83 == nil then
                    break
                end

                v82 = v83
                v60 = v83
                v66 = v84
                f64(v66)
            end
        end
    end

    if getupvalue or getupvalues then
        local v85
        v57, v58, v59, v60, v66, v85 = f15(i_2)
        i(v85)
    end
end

local t86 = {}

for i_1 = 0, n9 do
    local v87, v88 = pcall_1(getfenv_1, i_1)

    if v87 and v88 and type_1(v88) == "table" then
        if not t86[v88] then
            local t89 = {}
            t89[n10] = v88
            t86[v88] = t89
            t86[i_1] = t89
            t89[n13] = rawget_1(v88, "tostring")
            rawset_1(v88, "tostring", f23)
            v56 = f26()
            t86[v56] = t89

            if setfenv_2 and getfenv_2 then
                pcall_1(setfenv_2, i_1, v56)
            end

            pcall_1(setfenv_1, i_1, v56)
        else
            t86[i_1] = t86[v88]
        end
    end
end

f31(type_1)
f31(typeof_1)
local t90 = {}
t90.number = 0
t90.string = ""
t90.boolean = true
t90["nil"] = nil
local t91 = {}

if getmetatable_2 and setmetatable_2 then
    local v92 = next_1
    i_1 = t90
    local v93
    local v94 = v92
    local v95 = i_1
    local v96 = v93

    while true do
        local v97, v98 = v94(v95, v96)

        if v97 == nil then
            break
        end

        v96 = v97
        local v99 = v97
        v93 = v98
        t91[v99] = getmetatable_2(v93)
        setmetatable_2(v93, crashObjectMeta)
    end
end

luraphStack()

local function f100(p1, p2, p3, p4, p5, p6, p7, p8) -- upvalues: math_1, string_1
    local n1 = math_1.modf((math_1.abs((math_1.floor(((p7 <= 16166197696239 and p7 or p4) - -2031747305615594 + p4 == math_1.floor(math_1.pi) and p2 or 3983505421558453) - string_1.unpack("<i8", "\240\4  OY\4\0") - p8))))) - 2759405817881587
    local _ = math_1.max(math_1.max(math_1.max(math_1.modf(p3 <= math_1.max(math_1.floor(math_1.min(3142030729581166, -3301277737321977)), 3382085010485267) and -1870198656732717 or p5), p4) ~= math_1.floor(math_1.pi) and p4 or -2195638989220514, (math_1.floor(math_1.pi))), (math_1.ceil(math_1.pi))) + p8 - 3537223204
    local n2 = (p4 <= math_1.max(((((p3 < math_1.max(4176126679893394 + p2 + n1, p2) and -3778838192018519 or p8) ~= -2642399000203610 and p3 or p3) < 4321225417348114 and -1254333173346549 or p7) ~= p7 and 4188242475659667 or math_1.floor(math_1.pi)) - p3, p5) and p7 or p4) - 970808691
    local abs = math_1.abs
    local values = math_1.max(math_1.modf(math_1.min((math_1.abs(math_1.floor(math_1.pi) + math_1.ceil(math_1.pi) < p7 and n1 or p6) ~= n1 and p6 or -2956282120807486) < -4357789691078111 and p5 or math_1.floor(math_1.pi), p1)), n2) < n2 and string_1.unpack("<i8", "~\0190./\147\6\0")
    values = values or p1
    local n3 = abs(values) - 1512616473
    local n4 = math_1.ceil(((math_1.min(math_1.min(math_1.min(math_1.ceil(math_1.pi) - 2564485898371153 + 2717982124297554, -3612950288846097), p2) + p4, p2) <= math_1.ceil(math_1.pi) and 2404600480339086 or n3) ~= p3 and n1 or -4044843939124729) + p8) - 4925507929
    local abs_1 = math_1.abs
    local max = math_1.max
    local floor = math_1.floor
    local max_1 = math_1.max
    local ceil = math_1.ceil
    local ceil_1 = math_1.max((math_1.min(math_1.modf(math_1.ceil(math_1.max(math_1.modf(p6), p2) - n3) - math_1.ceil(math_1.pi)), p3) < string_1.unpack("<i8", "\0185\223g\145(\a\0") and p8 or n3) < 3123552987263646 and -2195043012565620 or -421131009014130, n4) ~= p1 and math_1.ceil(math_1.pi)
    ceil_1 = ceil_1 or -1083782712382870
    abs_1 = 2 ^ (abs_1(max(floor((max_1(ceil(ceil_1) == math_1.ceil(math_1.pi) and n2 or 3806379051205697, n4))) - n2, p7) - p1 - p3) - 544393320 - 1023)
    max = math_1.abs
    floor = (p6 <= math_1.min(math_1.min(math_1.max(math_1.min(math_1.max(math_1.min(n3, -516538533804995) - 289420542114924 == 1008355839506113 and p8 or 3996846074409324, -1766591712037127), n4), -2749317158011909) - n2 + -1935719716419579, n2) + n4, math_1.ceil(math_1.pi)) and 2473061447582442 or n4) - 2667895237892727
    return 1 * (abs_1 * (((n1 < ((max(string_1.unpack("<i8", "\150\15\236\t\190!\b\0") < floor and p5 or p4) ~= 2653601521352419 and p5 or math_1.ceil(math_1.pi)) ~= 1490406574764698 and -2435746654888631 or string_1.unpack("<i8", "\158#E|\174R\1\0")) and 1539393466800174 or math_1.floor(math_1.pi)) + math_1.floor(math_1.pi) + 2251799813685242) / 4503599627370496 + 1))
end

local floor = math_1.floor((math_1.max(math_1.floor(math_1.ceil(-1944055665001087) == 403258756509943 and -4354743861602404 or -912111142609874), (string_1.unpack("<i8", "%\220\231\161I\204\5\0"))))) - 1631989595078593
local floor_1 = ((math_1.min(math_1.abs(string_1.unpack("<i8", "M\6{\199\17X\v\0")) + math_1.floor(math_1.pi), string_1.unpack("<i8", "9tY\228\6\255\f\0")) == -1637689403891368 and 4021955025244751 or -3096351502872606) == -434448534502794 and 410415326428149 or 1191145852110621) - 1191147958691058
local abs = math_1.min(math_1.abs((math_1.ceil((math_1.modf(-1069445588410135 + math_1.ceil(math_1.pi)))))), -213205191094548) + 213204178098803
local floor_2 = math_1.min(math_1.floor((math_1.max(2348346442917096, 3638868535739600))) + -729335877037384, (math_1.ceil(math_1.pi))) + 372432113
local values = math_1.min(math_1.max(-4260361621437571, -4065585173540624), 4204595517397686) + 1538285877404905 <= -349282852460123 and 791982884075611 or string_1.unpack("<i8", "Vd0\2\183\229\1\0")
local modf = math_1.max(1919169350712150 - 2396760512551380 - math_1.ceil(math_1.pi) + 3180174258533828 - 2780746581903400, (math_1.floor(math_1.pi))) - 2097353197
local max = math_1.abs((math_1.ceil(math_1.max(3974842685702665, 1212551075636584) - 1422692285226684))) - 2552150048385523
local values_1 = math_1.min
local abs_1 = math_1.abs((math_1.max(2793225671801226, -3043377220361624)))

for _ = 1, f100(floor, floor_1, abs, floor_2, values - 791983461724934, modf, max, values_1(math_1.ceil(math_1.pi) <= abs_1 and -4143463146364812 or math_1.floor(math_1.pi), -364526801896576) + 4143464702443854) do
    v5()
end

local function f101(p1, p2, p3, p4, p5, p6, p7, p8, p9) -- upvalues: math_1, string_1
    local n1 = math_1.max(math_1.modf((math_1.floor((math_1.min(math_1.floor((p4 > p9 and 3342141004031685 or math_1.floor(math_1.pi)) - -4000368380351642 - p4) == -3454506884481601 and p5 or -105169517438842, p6))))) - p7, p5) + 1794538840
    local n2 = math_1.ceil((math_1.max((math_1.min(math_1.abs(p7 + n1 - p7 - 2768148302230523), p3) - p7 ~= p7 and p4 or 2470644645498258) - -3775778278033063, -1591203641985360))) - 3775778055206613
    local n3 = (p5 < math_1.max(math_1.max(math_1.modf(math_1.abs(math_1.abs((math_1.ceil(math_1.pi) >= -1800839012723051 and p9 or n2) + string_1.unpack("<i8", "#Jk\28\229\219\0\0"))) + math_1.floor(math_1.pi)), 4479704213207250) + -2651738897300242, -592221456045070) and p3 or 4179766935853281) - 252622123
    local ceil = ((p2 < (n2 <= math_1.abs(math_1.modf(math_1.modf(1632823852712337) < math_1.ceil(math_1.pi) and p9 or -1943907607408321)) and 789452163289053 or n3) and p6 or n1) <= n3 and p7 or p3) <= -2769833389643136 and math_1.ceil(math_1.pi)
    ceil = ceil or n1
    local n4 = (p1 <= ceil + string_1.unpack("<i8", "(\174\0154E\196\1\0") and p7 or -2463571366964281) + 118780989
    local n5 = math_1.min(math_1.abs(math_1.max(math_1.floor(string_1.unpack("<i8", "\28/W\\\232\30\b\0") - string_1.unpack("<i8", "_\219y\150\162W\1\0")), n2) - p5), (math_1.floor(math_1.pi))) + n1 + n2 + -4252928044956623 + 4252927085451739
    local floor = math_1.max
    local min = math_1.min
    local min_1 = math_1.min
    local max = math_1.max
    local modf = math_1.modf
    local max_1 = math_1.max
    local min_2 = math_1.min
    local modf_1 = math_1.modf
    local min_3 = math_1.min
    local max_2 = math_1.max(math_1.max(n2, 1872240134465474), n2)
    floor = floor(min(min_1(max(modf(max_1(min_2(modf_1(min_3((math_1.floor(math_1.pi) < max_2 and p3 or -2641463117375546) - -3510714785726126 ~= p8 and 127181820443767 or -2997321335318559, math_1.floor(math_1.pi))), n4), -3987866976252601)) - -3904032428482550, math_1.ceil(math_1.pi)), math_1.ceil(math_1.pi)) + p8 >= 850614273975048 and 884403232525432 or 4309526489693032, -4201731769391354), -2389732153667881) <= p4 and math_1.floor(math_1.pi)
    floor = floor or p9
    return 1 * (2 ^ (floor + 1022 - 1023) * ((math_1.abs((p6 <= math_1.ceil(math_1.abs(math_1.floor(math_1.floor(math_1.max(math_1.min(math_1.abs(math_1.min(math_1.min(math_1.abs(math_1.max(math_1.min(math_1.max(math_1.ceil(math_1.pi), -3643458877870165) - p8 - math_1.ceil(math_1.pi), n5) == n1 and -433355361782892 or 1028559262477053, -4277582112968303)), string_1.unpack("<i8", "\177\238z\167\t\150\6\0")), -4025232266073788)), p5), 2070257420027293))))) and 633344266618118 or p4) <= string_1.unpack("<i8", "\186I\183\181\202<\6\0") and n4 or 2241351135374764) + 2251799614834924) / 4503599627370496 + 1))
end

floor = math_1.abs((math_1.min(math_1.min(math_1.min(math_1.floor(math_1.pi) == -1176922670987114 and 1494230593919061 or -915823150976774, -621930042895428), 1494465007956514), (math_1.ceil(math_1.pi))))) - 915823537621941
floor_1 = math_1.ceil
abs = math_1.abs
floor_2 = (math_1.max(-3271535558062016, 1605551809397240) > 2861048625126937 and -3588624360679028 or math_1.ceil(math_1.pi)) ~= 1491270102337663 and math_1.floor(math_1.pi)
floor_2 = floor_2 or -4209602706467692

for _ = 1, f101(floor, floor_1((abs(floor_2))) + 1510828896, math_1.floor(math_1.min(math_1.ceil(100499139154521) - math_1.ceil(math_1.pi), (math_1.ceil(math_1.pi))) + math_1.floor(math_1.pi)) - 1015819962, math_1.modf((math_1.max(math_1.min(math_1.max(-3664011282111004, 1113006452826117), -1323393211540229) + math_1.floor(math_1.pi), 2239248550470085))) - 2239250175323627, math_1.modf((math_1.ceil(4424757661149730))) - math_1.ceil(math_1.pi) + math_1.ceil(math_1.pi) - 4424759034612267, (math_1.max(math_1.modf(math_1.abs(2930839591771132) < 2953736582564810 and -2374527201811814 or math_1.floor(math_1.pi)), 2079845747953999) < 3183357974593956 and -378714536462790 or 3001632676680028) + 378716012900714, math_1.ceil(math_1.max(math_1.min(-3800410024788187, (string_1.unpack("<i8", "\155\238\168\17Q\164\15\0"))), 3026820101064941) - math_1.ceil(math_1.pi)) - 3026820418696250, math_1.ceil((math_1.floor((math_1.modf((math_1.floor((math_1.abs(1097538931925014))))))))) - 1097539871309563, math_1.min(math_1.min(math_1.floor(math_1.pi) + string_1.unpack("<i8", "PD',[\179\1\0"), 3759568942117119) == string_1.unpack("<i8", "\174\219.\196\14\240\6\0") and -2194451805545881 or 4407176874817780, 2107590923710903) - 2864014229620345 + 756424402063189) do
    v6()
end

local function f102(p1, p2, p3, p4, p5, p6) -- upvalues: math_1, string_1
    local n1 = (math_1.max(math_1.floor(math_1.ceil((math_1.abs(p3) <= p4 and 2175156072001169 or -3166272055101838) + 1350156450442364) < -3017510093229373 and p3 or p3) == -3985085456143528 and -1121935059736213 or 487824158619378, p5) - p3 < -1880230731068044 and math_1.floor(math_1.pi) or math_1.ceil(math_1.pi)) - 5307031
    local n2 = (n1 < math_1.min(math_1.min(math_1.max(math_1.floor(math_1.floor(math_1.floor(math_1.abs(-2733660371665388 + n1)))), -826800788225604), math_1.ceil(math_1.pi)) - 3569410734702479, p5) and p1 or n1) - 2035904999
    local n3 = math_1.max(math_1.floor((math_1.abs((math_1.min(math_1.max(math_1.ceil((math_1.min(3031050240581319 + n2, (math_1.ceil(math_1.pi))))), (string_1.unpack("<i8", "\r\204\192\184\196\27\6\0"))), p3))))) - p5, 3397576584768820) - p4 - 3397577428429304
    local n4 = math_1.min(math_1.max(math_1.max(math_1.max(-2815429845214025 - -1986677496497 + n1, 4371829988532219) + math_1.floor(math_1.pi), 3977239082966792), p6) + p1, n2) + math_1.floor(math_1.pi)
    local _ = (math_1.ceil(math_1.pi) <= n4 and n3 or math_1.floor(math_1.pi)) + 1881014083
    local n5 = math_1.abs(math_1.floor((math_1.ceil(math_1.floor(math_1.min(p6 <= 1155933910755632 and p3 or p3, p3) + n3) - p6 - p2))) - -1049948397455865) - 1049949535693520
    local ceil = math_1.max(math_1.floor(math_1.abs(math_1.abs(math_1.min(math_1.floor((math_1.min(math_1.abs(-1984039497528530) + p3, -2062806535586911) + -2327063695856972 < n1 and 4424499832380223 or p1) <= p3 and n5 or p4) ~= n5 and 2792412668589555 or 3326210337176289, p2)) + p1 + n5) <= n3 and -4361423292052316 or -512268536165377) + math_1.floor(math_1.pi), n2) - p3 == string_1.unpack("<i8", "\162\254<G\21\14\3\0") and math_1.ceil(math_1.pi)
    ceil = ceil or n2
    return 1 * (2 ^ (ceil + 2041213051 - 1023) * (((((math_1.ceil((p1 < math_1.abs(math_1.floor(p6 <= math_1.floor(math_1.ceil(math_1.max((math_1.max(math_1.min(math_1.min(p4 + p2, p2), n5), math_1.ceil(math_1.pi)) ~= math_1.floor(math_1.pi) and n5 or -3876399467182213) - 345107198848477, string_1.unpack("<i8", "\234z\a\227\166\21\14\0")) > 1546979866869303 and p5 or 3200874611053445)) and -1057989077393474 or n5)) + -3852597417989660 and n3 or p6) + 770750869575366) > 3051443746255951 and n5 or -3025722465155043) >= -1951883635012042 and 2553794498748452 or n5) == math_1.floor(math_1.pi) and math_1.floor(math_1.pi) or math_1.floor(math_1.pi)) + 3377699720527869) / 4503599627370496 + 1))
end

floor = math_1.max(-346943486618334, (math_1.ceil(math_1.pi))) - 3343387540652923 + math_1.floor(math_1.pi) + 3343387857747932
floor_1 = math_1.ceil(math_1.floor(math_1.pi) == -4319779765441880 and -3682810681487980 or 2894372393813675) == -2564596343032488 and math_1.floor(math_1.pi)
floor_1 = floor_1 or 457687811613668
abs = math_1.modf((math_1.max(1999775402006757, math_1.floor(math_1.pi)) == -2114732994138734 and math_1.floor(math_1.pi) or math_1.floor(math_1.pi)) - -576062144670163 + 930608942767079) - 1506672384166405
floor_2 = math_1.min
values = math_1.min(2675488623933591, -288419416950019) - math_1.floor(math_1.pi) < math_1.floor(math_1.pi) and -121670993082296 or 4291225330452744
floor_2 = floor_2(string_1.unpack("<i8", "Q{p\1537\204\b\0") < values and 1300920610886476 or -2100775501020852, 3996781081804665) + 2100774547794088
values = math_1.min
modf = math_1.modf
max = math_1.max
values_1 = true and math_1.floor(math_1.pi)
values_1 = values_1 or string_1.unpack("<i8", "pv.!i\216\t\0")

for _ = 1, f102(floor, floor_1 - 1172007650788062 - 2235421232049429 + 2949740309825278, abs, floor_2, values(modf(max(values_1, 451093528620093) + math_1.ceil(math_1.pi)), 4212908371366212) - 451092585838772, math_1.min(math_1.min(math_1.floor(math_1.pi), string_1.unpack("<i8", "m{\239\160\136\239\a\0")) + 1210898865986975 < string_1.unpack("<i8", "N\182\29\16242\3\0") and 1525310397285182 or 1183905012285287, 4503163449415711) - 3348268746147100 + 2164363580439375) do
    v7()
end

if not v8 then
    f23()
end

if #v8 ~= math_1.modf(math_1.max(((math_1.floor(math_1.max(math_1.max(v8[2], -1620770568391332), v8[6])) ~= 837857408289134 and math_1.floor(math_1.pi) or math_1.ceil(math_1.pi)) ~= 3023484046498060 and v8[2] or v8[2]) - v8[1], -2242285815081459) ~= 4019054140030633 and string_1.unpack("<i8", "\253._4\136\243\n\0") or string_1.unpack("<i8", "\246\239c\165J\205\t\0")) - 3255613027947185 + 173096941085629 then
    f23()
end

if v8[math_1.min(1885809006015741, 889503707680707) - v8[5] - v8[5] - 889495494040035] ~= 349335283 then
    return f23()
end

if v8[math_1.abs(math_1.max(math_1.abs(v8[4] - 2268530165037998 + v8[4]), 2653058047046750)) - 2653058047046741] ~= 3502622987 then
    return f23()
end

local min = math_1.min
local modf_1 = math_1.modf
floor = math_1.max
floor_1 = v8[1] < -1948860950302601 and v8[3]
floor_1 = floor_1 or -4147869817730582

if v8[min(modf_1(floor(floor_1 + v8[2], v8[1])), v8[9]) - 14821] ~= 2676198886 then
    return f23()
end

if v8[(math_1.abs((v8[2] < math_1.floor(math_1.pi) and -3220743852419065 or v8[4]) == 3384710774117559 and v8[5] or v8[5]) - v8[5] < v8[5] and -2992851016941210 or v8[2]) + 2992851016941215] ~= 4106820334 then
    return f23()
end

min = math_1.max((v8[1] or v8[5]) - v8[1], v8[6]) <= string_1.unpack("<i8", "\240\1\176W\235*\1\0") and v8[9]
min = min or -251626024932692

if v8[min - v8[7] + 258176938] ~= 14823 then
    return f23()
end

min = math_1.min
modf_1 = math_1.max
floor = math_1.ceil(-3360748455643464) == v8[2] and math_1.floor(math_1.pi)
floor = floor or v8[2]

if v8[min(modf_1(floor - -2167068105578605, 363919073019225), math_1.ceil(math_1.pi)) - 1] ~= 3018667413 then
    return f23()
end

if v8[math_1.min(math_1.modf(math_1.min(math_1.max(math_1.floor(math_1.pi), v8[4]), -332302797117687) ~= -556984966224609 and v8[3] or math_1.floor(math_1.pi)), v8[8]) - 1234350121] ~= 1234350129 then
    return f23()
end

min = math_1.modf
modf_1 = math_1.modf(v8[3] == v8[7] and 4312608235962686 or 997204558843003) < 400950388722027 and v8[3]
modf_1 = modf_1 or 2714865890574345

if v8[(min(modf_1) > -2444504544125348 and 3397561117350096 or v8[1]) - 3397561117350089] ~= 3760799924 then
    return f23()
end

if v8[math_1.max(math_1.min(math_1.min(math_1.floor(math_1.pi) + 855932297762977, 1080255894401262) + v8[3], v8[2]), v8[9]) - 3502622981] ~= 3479301002 then
    return f23()
end

local v103 = u1()

do
    local n104 = 141
    local n105 = 212
    local n106 = 231
    local n107 = 38
    local luraphK = LuraphK[2]
    local t108 = {}
    local n109 = (n104 * n107 + n106) % 256

    for _ = 0, 255 do
        local bit32_1 = bit32

        do
            local s110 = "bxor"
            t108[bit32_1[s110](n109, n105)] = char(n109)
        end

        n109 = (n104 * n109 + n106) % 256
    end

    local t111 = {}
    t111[2] = 6
    t111[5] = 1
    t111[4] = 3

    local function f112(p1) -- upvalues: type_1, byte, n104, n106, t108, next_1, t111
        local v1 = p1[1]
        local v2 = p1[2]
        local type_1_1 = type_1(v1)

        if type_1_1 == "boolean" then
            v1 = not v1
        elseif type_1_1 == "string" then
            local byte_1 = byte(v1, 1, 1)
            byte_1 = (n104 * byte_1 + n106) % 256
            local s3 = ""

            for i = 2, #v1 do
                local v4 = s3
                local t108_1 = t108

                do
                    local byte_2 = byte(v1, i)
                    s3 = v4 .. t108_1[bit32.bxor(byte_2, byte_1)]
                end

                byte_1 = (n104 * byte_1 + n106) % 256
            end

            v1 = s3
        elseif type_1_1 == "number" then
            local v5

            if v1 == 0 then
                v5 = v1
            else
                v5 = -v1
            end

            v1 = v5
        end

        local next_1_1 = next_1
        local v6 = v2
        local v7
        local v8 = next_1_1
        local v9 = v6
        local v10 = v7

        while true do
            local v11, v12 = v8(v9, v10)

            if v11 == nil then
                break
            end

            v10 = v11
            v6 = v11
            v7 = v12
            local v13 = v7[1]
            local v14 = v7[2]
            local v15 = t111[v14]
            v13[v14] = v1
            v13[v15] = nil
        end
    end

    local t113 = {}

    function t113.__index(p1, p2) -- upvalues: t111, luraphK, f112
        if p2 == 2 or p2 == 5 or p2 == 4 then
            local v1 = t111[p2]
            local v2 = p1[v1]

            if v2 then
                local v3 = luraphK[v2]
                p1[v1] = nil
                f112(v3)
                return p1[p2]
            end
        end
    end

    local v114

    for i_3 = 1, #luraphK do
        v114 = luraphK[i_3]

        if n109 % 4 == 0 then
            f112(v114)
        else
            local v115 = v114[2]
            local v116 = next_1
            local v117 = v115
            local v118
            local v119 = v116
            local v120 = v117
            local v121 = v118

            while true do
                local v122, v123 = v119(v120, v121)

                if v122 == nil then
                    break
                end

                v121 = v122
                v117 = v122
                v118 = v123
                local v124 = v118[1]
                local v125 = v118[2]
                v124[t111[v125]] = i_3
                v124[v125] = nil
                setmetatable_1(v124, t113)
            end
        end

        n109 = (n104 * n109 + n106) % 256
    end

    LuraphK[2] = nil
    local v126 = next_1
    local v127 = t30
    local v128
    local v129 = v126
    local v130 = v127
    local v131 = v128

    while true do
        do
            local v132 = v129(v130, v131)

            if v132 == nil then
                break
            end

            v131 = v132
            v127 = v132
        end

        f32(v127)
    end

    for i_3 = 0, n9 do
        v114 = t86[i_3]

        if v114 then
            local v133 = v114[n10]
            pcall_1(setfenv_1, i_3, v133)

            if setfenv_2 and getfenv_2 then
                pcall_1(setfenv_2, i_3, v133)
            end

            rawset_1(v133, "tostring", v114[n13])
        end
    end
end

do
    local v134, v135, v136

    if getmetatable_2 and setmetatable_2 then
        v134 = next_1
        v135 = t90
        v136 = nil
        local v137 = v134
        local v138 = v135
        local v139 = v136

        while true do
            do
                local v140, v141 = v137(v138, v139)

                if v140 == nil then
                    break
                end

                v139 = v140
                v135 = v140
                v136 = v141
            end

            setmetatable_2(v136, t91[v135])
        end
    end

    v134 = next_1
    v135 = t24
    v136 = nil
    local v142 = v134
    local v143 = v135
    local v144 = v136

    while true do
        do
            local v145, v146 = v142(v143, v144)

            if v145 == nil then
                break
            end

            v144 = v145
            v135 = v145
            v136 = v146
        end

        local v147 = next_1
        local v148 = v136
        local v149
        local v150 = v147
        local v151 = v148
        local v152 = v149

        while true do
            local v153 = v150(v151, v152)

            if v153 == nil then
                break
            end

            v152 = v153
            v136[v153] = nil
        end
    end
end

local v154, f155 = pcall_1(loadstring_1, f43 .. format(' return setfenv(function(...) return %s(...) end, setmetatable({ ["%s"] = ... }, { __index = getfenv((...)) })) ', "ZRhcWBs", "ZRhcWBs"))

if not v154 or not f155 or type_1(f155) ~= "function" then
    function f155() -- upvalues: error_1
        error_1("Your Lua environment does not support load or loadstring, therefore you are unable to use Luraph's 'LPH_NO_UPVALUES' macro.")
    end
end

LuraphK[1] = f155
return v103
