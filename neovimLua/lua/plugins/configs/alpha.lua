local present, alpha = pcall(require, "alpha")

if not present then
   return
end

local function button(sc, txt, keybind)
   local sc_ = sc:gsub("%s", ""):gsub("DATV", "<leader>")

   local opts = {
      position = "center",
      text = txt,
      shortcut = sc,
      cursor = 5,
      width = 36,
      align_shortcut = "right",
      hl = "AlphaButtons",
   }

   if keybind then
      opts.keymap = { "n", sc_, keybind, { noremap = true, silent = true } }
   end

   return {
      type = "button",
      val = txt,
      on_press = function()
         local key = vim.api.nvim_replace_termcodes(sc_, true, false, true)
         vim.api.nvim_feedkeys(key, "normal", false)
      end,
      opts = opts,
   }
end

local default = {}

default.ascii = {
   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
   "         Welcome To DATV           ",
   "   AnonOps: irc://anonops:6697     "
}

default.header = {
   type = "text",
   val = default.ascii,
   opts = {
      position = "center",
      hl = "AlphaHeader",
   },
}

default.buttons = {
   type = "group",
   val = {
      button("DATV f f", "  Find File  ", ":Telescope find_files<CR>"),
      button("DATV f o", "  Recent File  ", ":Telescope oldfiles<CR>"),
      button("DATV f w", "  Find Word  ", ":Telescope live_grep<CR>"),
      button("DATV b m", "  Bookmarks  ", ":Telescope marks<CR>"),
      button("DATV t h", "  Themes  ", ":Telescope themes<CR>"),
      button("DATV e s", "  Settings", ":e $MYVIMRC | :cd %:p:h <CR>"),
   },
   opts = {
      spacing = 1,
   },
}

local M = {}

M.setup = function(override_flag)
   if override_flag then
      default = require("core.utils").tbl_override_req("alpha", default)
   end
   alpha.setup {
      layout = {
         { type = "padding", val = 9 },
         default.header,
         { type = "padding", val = 2 },
         default.buttons,
      },
      opts = {},
   }
end

return M
