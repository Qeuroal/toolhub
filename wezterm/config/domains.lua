local platform = require('utils.platform')

---@type Config
local options = {
  -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
  ssh_domains = {},

  -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
  unix_domains = {},

  -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
  wsl_domains = {},
}

if platform.is_win then
  options.ssh_domains = {
    -- yazi's image preview on Windows will only work if launched via ssh from WSL
    {
      name = 'ssh:wsl',
      username = 'qeuroal',
      remote_address = 'localhost',
      multiplexing = 'None',
      default_prog = { 'zsh', '-l' },
      assume_shell = 'Posix',
    },
  }

  options.wsl_domains = {
    {
      name = 'wsl:archlinux-zsh',
      distribution = 'archlinux',
      username = 'qeuroal',
      default_cwd = '/home/qeuroal',
      default_prog = { 'zsh', '-l' },
    },
    {
      name = 'wsl:archlinux-bash',
      distribution = 'archlinux',
      username = 'qeuroal',
      default_cwd = '/home/qeuroal',
      default_prog = { 'bash', '-l' },
    },
  }
end

return options
