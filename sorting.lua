local animals = {
    {name = "bunny", size = 4},
    {name = "mouse", size = 1},
    {name = "cow", size = 30}
}

-- local mixTable = {"Gizmo", "xeno", 23, "Apple", "cruise", 46, 5, "binary", 99, 7, 11, 13}
local mixTable = {"bronze", "Gizmo", "Bar", "almighty", "Tesla", "foo", "xeno", "care", "Apple", "cruise", "binary"}

local key = "size"
-- sort animals by size descending
table.sort(animals, function(a,b) return a[key] > b[key] end)
for i,v in ipairs(animals) do print(v.name) end

print()
-- sort animals by size ascending
table.sort(animals, function(a,b) return a[key] < b[key] end)
for i,v in ipairs(animals) do print(v.name) end

print()

table.sort(mixTable)
for i,v in ipairs(mixTable) do print(v) end