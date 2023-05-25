-- [[
--THANKS BE  TO TJ DEVRIES FOR THIS IDEA OF 
--MAKING LUA PRINT TABLES EASIER
-- ]]
P = function (v) -- P is a function that takes the variable v. P(v) where v = the name of the thing you want to print
  print(vim.inspect(v))
  return v
end

RELOAD = function (...)
 return require("plenary.reload").reload_module(...)
end

R = function (name)
  RELOAD(name)
  return require(name)
end
