-- Lua comments
-- Variables
local number_variable = 42
local string_variable = "Hello, world!"
local boolean_variable = true
local table_variable = { "apple", "banana", "cherry" }

-- Functions
local function add(a, b)
    return a + b
end

-- Conditional statements
if number_variable > 50 then
    print("Number is greater than 50")
elseif number_variable == 50 then
    print("Number is exactly 50")
else
    print("Number is less than 50")
end

-- Loops
for i = 1, 5 do
    print("Iteration:", i)
end

-- Table iteration
for index, value in ipairs(table_variable) do
    print("Index:", index, "Value:", value)
end

-- String manipulation
local greeting = "Hello"
local name = "Alice"
local message = greeting .. ", " .. name .. "!"
print(message)

-- Arrays and tables
local fruits = { "apple", "banana", "cherry" }
fruits[4] = "date"
for index, fruit in ipairs(fruits) do
    print("Index:", index, "Fruit:", fruit)
end

-- Multiline strings
local multiline_string = [[
This is a multiline string.
It can contain multiple lines.
]]
print(multiline_string)

-- Error handling
local success, result = pcall(function()
    error("Oops, something went wrong!")
end)
if not success then
    print("Error:", result)
end

-- Metatables and metamethods (operator overloading)
local Vector = {}
Vector.__index = Vector

function Vector.new(x, y)
    local self = setmetatable({}, Vector)
    self.x = x
    self.y = y
    return self
end

function Vector.__add(a, b)
    return Vector.new(a.x + b.x, a.y + b.y)
end

local v1 = Vector.new(1, 2)
local v2 = Vector.new(3, 4)
local v3 = v1 + v2
print("Vector addition:", v3.x, v3.y)

-- Custom modules
local mymodule = require("mymodule")
mymodule.foo()

-- Custom global variables
MY_GLOBAL_VARIABLE = "Hello from a global variable"

-- Accessing global variables
print(MY_GLOBAL_VARIABLE)

