--[[
    if the needle is of type table
    then it will compare the reference
    so if you are looking for a 'empty' table
    this function will not work
--]]
function inTable(needle,haystack)
    for _, item in ipairs(haystack) do
        if item == needle then
            return true
        end
    end
    return false
end

function empty(tblOrVar)
    if type(tblOrVar) == "table" then
        return #tblOrVar == 0
    end

    if not tblOrVar then
        return true
    elseif tblOrVar == '' then
        return true
    end

    return false
end

function cap(val, min, max)
    return math.max(math.min(val, max), min)
end

function dump(obj,counter)
    if not counter then
        counter = 1
    end
    if counter > 5 then
        return {error = "too far down the rabbit hole"}
    end
    local tabChars = string.rep("\t",0)
    local result = "" .. tabChars .. "\n{\n"

    for key, value in pairs(obj) do
        result = result..tabChars.."\t".."key = "..tostring(key)
        if type(value) == "table" then
            result = result ..tabChars.."\t".."\n{\n"
            counter = counter + 1
            result = result .. tostring(dump(obj, counter))
            result = result ..tabChars.."\t".."\n}\n"
        else
            result = result..tabChars.."\t".." value = "..tostring(value).."\n"
        end
    end
    return result
end
