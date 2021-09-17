local ctable = {}

for i = 1, 10 do
    if ctable[i] == nil then
        print("ctable", i, "is nil")
        ctable[i] = {}
    else
        ctable[i]['val'] = i + 10
    end
end

for i = 1, 10 do
    if ctable[i] == nil then
        ctable[i] = {}
    else
        ctable[i]['val'] = i + 10
    end
end

for k, v in pairs(ctable) do
    for attr, val in pairs(v) do
        print(k, attr, val)
    end
end