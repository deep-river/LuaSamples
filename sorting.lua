local animals = {
    {name = "bunny", size = 4},
    {name = "mouse", size = 1},
    {name = "cow", size = 30}
}

local key = "size"
-- sort animals by size descending
table.sort(animals, function(a,b) return a[key] > b[key] end)
for i,v in ipairs(animals) do print(v.name) end

print()
-- sort animals by size ascending
table.sort(animals, function(a,b) return a[key] < b[key] end)
for i,v in ipairs(animals) do print(v.name) end