local status, _ = pcall(vim.cmd, "colorscheme dracula")
if not status then
    print("ColorScheme not found!")
    return
end
