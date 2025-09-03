local User = {}
User.__index = User

function User.new(name, age)
    local self = setmetatable({}, User)
    self.name = name
    self.age = age
    return self
end

function User:greet()
    return "Hello, my name is " .. self.name .. " and I am " .. self.age .. " years old."
end

return User