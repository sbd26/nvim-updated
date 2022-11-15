local colors = {

  magenta  = '#c678dd',
   green    = '#98be65',
   blue   = '#80a0ff',
   cyan   = '#79dac8',
   black  = '#080808',
   white  = '#c6c6c6',
   red    = '#ff5189',
   violet = '#d183e8',
   grey   = '#303030',
   orange   = '#FF8800',
}

local bubbles_theme = {
   normal = {
      a = { fg = colors.black, bg = colors.green },
      b = { fg = colors.white, bg = colors.grey },
      c = { fg = colors.black, bg = colors.black },
   },

   insert = { a = { fg = colors.black, bg = colors.red } },
   visual = { a = { fg = colors.black, bg = colors.cyan } },
   replace = { a = { fg = colors.black, bg = colors.red } },

   inactive = {
      a = { fg = colors.blue, bg = colors.white },
      b = { fg = colors.white, bg = colors.black },
      c = { fg = colors.black, bg = colors.black },
   },
}

require('lualine').setup {
   options = {
      theme = bubbles_theme,
      -- component_separators = '|',
      section_separators = { left = '', right = '' },
   },
   sections = {
      lualine_a = {
         { 'mode', separator = { left = '' , right = ''}, right_padding = 2, color = {gui = 'bold'} },
      },
      lualine_b = { { 'filename', separator = { left = '', right = '' }, right_padding = 2 },},
      lualine_c = {  },
      lualine_x = {
      },
      lualine_y = {
         { 'filesize', separator = { left = '',right = ''}, right_padding = 2 },
         {'branch',
         color = { fg = colors.violet,gui = 'bold' },
      }, -- end of branch
      {
         'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
  separator = {
    left = '',
    right = '',
  },


      },
      { 'progress', separator = { left = '' , right = ''}, right_padding = 2 }

   },
   lualine_z = {
      { 'location', separator = { left = '', right = '' }, left_padding = 2 },
   },
},
inactive_sections = {
   lualine_a = { 'filename' },
   lualine_b = {},
   lualine_c = {},
   lualine_x = {},
   lualine_y = {},
   lualine_z = { 'location' },
},
tabline = {
   lualine_a = {
      {
         "buffers",
         separator = { left = "", right = ""},
         right_padding = -1,
         left_padding = -1,
         symbols = { alternate_file = "" },
      },
   },
},
extensions = {},
}
