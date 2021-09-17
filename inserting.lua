
local clock = os.clock
-- #1
local total = 0
local mytable = {}
local push = table.insert
for i = 1, 1e7 do
    local t = clock()
    push(mytable, 0)

    t = clock() - t
    total = total + t
end
print("#1 table.insert: "..total)
-- #2
local total = 0
local mytable = {}
for i = 1, 1e7 do
    local t = clock()
    mytable[#mytable + 1] = 0

    t = clock() - t
    total = total + t
end
print("#2 Manual approach: "..total)
-- #3
local total = 0
local mytable = {}
function insert(t, v)
    t[#t + 1] = v
end

for i = 1, 1e7 do
    local t = clock()
    insert(mytable, 0)

    t = clock() - t
    total = total + t
end
print("#3 Modified manual approach: "..total)
-- #4
local total = 0
local mytable = {}
local t_len = #mytable
for i = 1, 1e7 do
    local t = clock()
    mytable[t_len + 1] = 0
    t_len = t_len + 1

    t = clock() - t
    total = total + t
end
print("#4 Manual approach with length var: "..total)

for k = 1, 10 do
    print(k, mytable[k])
end