local M = {}

M.custom_path = ""

M.save_in_file = function(file_name, content)
  local json_file = string.format("%s%s", M.custom_path, file_name)
  vim.fn.system("rm -f " .. json_file)
  vim.fn.system(string.format("echo '%s' > " .. json_file, content))
  vim.fn.system("jq . " .. json_file)
end

M.pretty = function(content)
  local _json = vim.json.decode(content)
  _json = vim.json.encode(_json)
  local _body = vim.fn.system('jq .', _json)
  return _body
end

return M
