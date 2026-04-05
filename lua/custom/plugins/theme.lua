return {
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          -- TokyoNight Suite
          'tokyonight',
          'tokyonight-night',
          'tokyonight-storm',
          'tokyonight-moon',
          'tokyonight-day',

          -- Modern & Special
          'retrobox',
          'zaibatsu',
          'wildcharm',
          'lunaperche',
          'unokai',
          'randomhue',

          -- The "Mini" Collection
          'miniautumn',
          'minicyan',
          'minischeme',
          'minispring',
          'minisummer',
          'miniwinter',

          -- Vim Classics (High Contrast / Legacy)
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
