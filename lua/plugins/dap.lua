return {
  'mfussenegger/nvim-dap',
  dependencies = {
    -- Creates a beautiful debugger UI
    'rcarriga/nvim-dap-ui',

    -- Required dependency for nvim-dap-ui
    'nvim-neotest/nvim-nio',

    -- Language-specific debuggers
    'leoluz/nvim-dap-go',

    -- Shows variable values inline as virtual text
    'theHamsta/nvim-dap-virtual-text',
  },
  keys = {
    {
      '<leader>dc',
      function()
        require('dap').continue()
      end,
      desc = '[D]ebug: Start/Continue',
    },
    {
      '<leader>dsi',
      function()
        require('dap').step_into()
      end,
      desc = '[D]ebug: Step Into',
    },
    {
      '<leader>dsO',
      function()
        require('dap').step_over()
      end,
      desc = '[D]ebug: Step Over',
    },
    {
      '<leader>dso',
      function()
        require('dap').step_out()
      end,
      desc = '[Debug]: Step Out',
    },
    {
      '<leader>db',
      function()
        require('dap').toggle_breakpoint()
      end,
      desc = '[D]ebug: Toggle Breakpoint',
    },
    {
      '<leader>dB',
      function()
        require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
      end,
      desc = '[D]ebug: Set Conditional Breakpoint',
    },
    {
      '<leader>dt',
      function()
        require('dapui').toggle()
      end,
      desc = '[D]ebug: Toggle UI',
    },
    {
      '<leader>dl',
      function()
        require('dap').run_last()
      end,
      desc = '[D]ebug: Run Last Configuration',
    },
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    -- Dap UI setup
    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    -- Automatically open/close DAP UI
    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    -- Setup virtual text to show variable values inline
    require('nvim-dap-virtual-text').setup()

    -- Golang has its own plugin
    require('dap-go').setup {
      delve = {
        path = 'dlv',
      },
    }

    -- Setup codelldb
    dap.adapters.codelldb = {
      type = 'server',
      port = '${port}',
      executable = {
        command = 'codelldb',
        args = { '--port', '${port}' },
      },
    }

    -- Rust
    dap.configurations.rust = {
      {
        name = 'Launch file',
        type = 'codelldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
      {
        name = 'Debug Test (Manual)',
        type = 'codelldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to test executable: ', vim.fn.getcwd() .. '/target/debug/deps/', 'file')
        end,
        args = function()
          local test_name = vim.fn.input 'Test name: '
          return { test_name }
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
    }
  end,
}
