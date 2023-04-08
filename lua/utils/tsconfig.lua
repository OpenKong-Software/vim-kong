-- this help us to work with typescript aliases paths
local M = {}

local function expand_tsconfig_path(input)
  local tsconfig_file = get_tsconfig_file()

  if not tsconfig_file then
    return input
  end

  local alias_to_paths = get_tsconfig_paths(tsconfig_file)

  if not alias_to_paths then
    return input
  end

  for alias, path in pairs(alias_to_paths) do
  end

  return input
end

function M.includeeexpr(input)
  local path = expand_tsconfig_path(input)
  return path
end

return M

