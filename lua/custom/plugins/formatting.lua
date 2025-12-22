return {
  {
    'stevearc/conform.nvim',
    opts = {
      -- 1. Configure the tool to use MySQL dialect
      formatters = {
        sql_formatter = {
          -- This flag "-l mysql" stops it from crushing your code
          prepend_args = { '-l', 'mysql' },
        },
      },
      -- 2. Link SQL files to this tool
      formatters_by_ft = {
        sql = { 'sql_formatter' },
        mysql = { 'sql_formatter' },
      },
    },
  },
}
