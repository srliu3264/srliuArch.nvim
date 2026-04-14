return {
  -- Colorscheme plugins
  { 'catppuccin/nvim', name = 'catppuccin', lazy = true },
  { 'rose-pine/neovim', name = 'rose-pine', lazy = true },
  { 'sainnhe/gruvbox-material', lazy = true },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'sainnhe/everforest', lazy = true },
  { 'EdenEast/nightfox.nvim', lazy = true },
  { 'navarasu/onedark.nvim', lazy = true },
  { 'shaunsingh/nord.nvim', lazy = true },
  { 'Mofiqul/dracula.nvim', lazy = true },
  { 'craftzdog/solarized-osaka.nvim', lazy = true },
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  { 'projekt0n/github-nvim-theme', lazy = true },
  { 'bluz71/vim-nightfly-colors', name = 'nightfly', lazy = true },
  { 'bluz71/vim-moonfly-colors', name = 'moonfly', lazy = true },
  { 'nyoom-engineering/oxocarbon.nvim', lazy = true },
  { 'marko-cerovac/material.nvim', lazy = true },
  { 'AlexvZyl/nordic.nvim', lazy = true },
  { 'ribru17/bamboo.nvim', lazy = true },
  { 'scottmckendry/cyberdream.nvim', lazy = true },
  { 'mhartington/oceanic-next', lazy = true },
  { 'ray-x/aurora', lazy = true },
  { 'titanzero/zephyrium', lazy = true },
  { 'olivercederborg/poimandres.nvim', lazy = true },
  { 'rmehri01/onenord.nvim', lazy = true },
  { '0xstepit/flow.nvim', lazy = true },
  { 'xiyaowong/transparent.nvim', lazy = true },

  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          -- TokyoNight
          'tokyonight',
          'tokyonight-night',
          'tokyonight-storm',
          'tokyonight-moon',
          'tokyonight-day',

          -- Catppuccin
          'catppuccin',
          'catppuccin-latte',
          'catppuccin-frappe',
          'catppuccin-macchiato',
          'catppuccin-mocha',

          -- Rose Pine
          'rose-pine',
          'rose-pine-main',
          'rose-pine-moon',
          'rose-pine-dawn',

          -- Gruvbox
          'gruvbox',
          'gruvbox-material',

          -- Kanagawa
          'kanagawa',
          'kanagawa-wave',
          'kanagawa-dragon',
          'kanagawa-lotus',

          -- Everforest
          'everforest',

          -- Nightfox
          'nightfox',
          'dayfox',
          'dawnfox',
          'duskfox',
          'nordfox',
          'terafox',
          'carbonfox',

          -- OneDark
          'onedark',

          -- Nord
          'nord',

          -- Dracula
          'dracula',
          'dracula-soft',

          -- Solarized Osaka
          'solarized-osaka',
          'solarized-osaka-night',
          'solarized-osaka-storm',
          'solarized-osaka-day',
          'solarized-osaka-moon',

          -- GitHub
          'github_dark',
          'github_dark_default',
          'github_dark_dimmed',
          'github_dark_high_contrast',
          'github_dark_colorblind',
          'github_light',
          'github_light_default',
          'github_light_high_contrast',
          'github_light_colorblind',

          -- Nightfly & Moonfly
          'nightfly',
          'moonfly',

          -- Oxocarbon
          'oxocarbon',

          -- Material
          'material',
          'material-darker',
          'material-deep-ocean',
          'material-oceanic',
          'material-palenight',

          -- Nordic
          'nordic',

          -- Bamboo
          'bamboo',
          'bamboo-multiplex',
          'bamboo-vulgaris',

          -- Cyberdream
          'cyberdream',

          -- Oceanic Next
          'OceanicNext',

          -- Aurora
          'aurora',

          -- Zephyrium
          'zephyrium',

          -- Poimandres
          'poimandres',

          -- OneNord
          'onenord',

          -- Flow
          'flow',

          -- Modern built-in
          'retrobox',
          'zaibatsu',
          'wildcharm',
          'lunaperche',
          'unokai',
          'randomhue',

          -- Mini Collection
          'miniautumn',
          'minicyan',
          'minischeme',
          'minispring',
          'minisummer',
          'miniwinter',

          -- Vim Classics
          'industry',
          'habamax',
          'koehler',
          'elflord',
          'desert',
          'evening',
          'darkblue',
          'blue',
          'delek',
          'default',
          'morning',
          'murphy',
          'pablo',
          'peachpuff',
          'quiet',
          'ron',
          'shine',
          'slate',
          'sorbet',
          'torte',
          'vim',
          'zellner',
        },
        livePreview = true,
      }
    end,
    keys = {
      { '<leader>th', '<cmd>Themery<cr>', desc = 'Themery (Theme Picker)' },
    },
  },
}
