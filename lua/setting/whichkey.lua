local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = { enabled = false, suggestions = 20 },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}
local Terminal = require('toggleterm.terminal').Terminal
local toggle_float = function()
  local float = Terminal:new({ direction = "float" })
  return float:toggle()
end


local mappings = {
    t = {
      t = { ":ToggleTerm<cr>", "Split Below" },
      f = { toggle_float, "Floating Terminal" },
      s = {":wq<cr>", "Write and Quit"},
    },
    p= {":%y+<cr>", "Copy to clipboard"},
    w = {":w<cr>","Write"},
    q = {":q<cr>", "Quit"},
    s = {":wq<cr>","Write and Quit"},
    f = {
      q = {":q!<cr>", "Force Quit"},
      r = {":luafile %<cr>", "Refresh"}
    },
    c = {
      t = {
         a = {":CompetiTestAdd<cr>", "TestAdd"},
         r = {":CompetiTestReceive<cr>", "TestCaseReciver"},
      },
      r = {":CompetiTestRun<cr>", "TestCaseRun"}
    },
    g = {
      e = {
        ":$<cr>", "Go to End Of a File"
      },
    }
    
}
















local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
