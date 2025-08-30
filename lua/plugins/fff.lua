return {
  'dmtrKovalenko/fff.nvim',
  build = 'cargo build --release',
  opts = {
    title = 'Files:',
    layout = {
      prompt_position = 'top',
    },
    debug = {
      enabled = false,
      show_scores = false,
    },
  },
  lazy = false,
  keys = {
    {
      -- Use ctrl-p for finding files
      '<C-P>',
      function()
        require('fff').find_files()
      end,
      desc = 'FFFind files',
    },
  },
}
