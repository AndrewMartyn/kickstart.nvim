-- https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'open_default',
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        position = 'left',
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      source_selector = {
        winbar = false,
        statusline = false,
      },
    },
  },
}
