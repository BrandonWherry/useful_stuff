local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigator<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigator<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigator<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigator<CR>", "window up" },
  }
}

return M
