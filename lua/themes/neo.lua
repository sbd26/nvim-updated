local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

if not ok_status then
  return
end

-- Default Setting for NeoSolarized

NeoSolarized.setup {
  style = "light", -- "dark" or "light"
  transparent = false, -- true/false
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  enable_italics = false, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  }
-- Set colorscheme to NeoSolarized
vim.cmd [[
   try
        colorscheme NeoSolarized
    catch /^Vim\%((\a\+)\)\=:E18o
        colorscheme default
        set background=dark
    endtry
]]
