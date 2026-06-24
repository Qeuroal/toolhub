1. 在 `.bashrc` 或 `.zshrc` 中添加如下:

```bashrc
# yazi
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}
```

1. 下载配置文件夹到 `~/.config/yazi`

# references

- [preset](https://github.com/sxyazi/yazi/tree/shipped/yazi-config/preset)

