local platform = require('utils.platform')

---@type Config
local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  -- options.default_prog = { 'pwsh', '-NoLogo' }
  options.default_prog = { 'cmd' }
  options.launch_menu = {
    { label = 'Command Prompt', args = { 'cmd' } },
    { label = 'Git Bash', args = { 'E:\\Program Files\\Git\\bin\\bash.exe' }, },
    { label = 'PowerShell Desktop', args = { 'powershell', '-NoLogo' } },
    { label = 'PowerShell Core', args = { 'pwsh', '-NoLogo' } },
    { label = 'Nushell', args = { 'nu' } },
    { label = 'Msys2', args = { 'ucrt64.cmd' } },
  }
elseif platform.is_mac then
  options.default_prog = { 'zsh', '-l' }
  options.launch_menu = {
    { label = 'Bash', args = { 'bash', '-l' } },
    { label = 'Fish', args = { '/opt/homebrew/bin/fish', '-l' } },
    { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
    { label = 'Zsh', args = { 'zsh', '-l' } },
  }
elseif platform.is_linux then
  options.default_prog = { 'zsh', '-l' }
  options.launch_menu = {
    { label = 'Bash', args = { 'bash', '-l' } },
    { label = 'Fish', args = { 'fish', '-l' } },
    { label = 'Zsh', args = { 'zsh', '-l' } },
  }
end

return options
