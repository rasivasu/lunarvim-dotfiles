-- List your plugins here
local modules = {
  { "folke/tokyonight.nvim" },
  { "kana/vim-textobj-entire"},
  { "kana/vim-textobj-indent"},
  { "kana/vim-textobj-fold"},
  { "kana/vim-textobj-function"},
  { "kana/vim-textobj-line"},
  { "kana/vim-textobj-user"},
  {
    "phaazon/hop.nvim",
    branch = "v1", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = "etovxqpdygfblzhckisuran" }
    end
  },
  { "tpope/vim-surround" },
}

return modules
