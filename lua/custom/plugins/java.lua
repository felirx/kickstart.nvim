return {
  'nvim-java/nvim-java',
  lazy = false,
  dependencies = {
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'MunifTanjim/nui.nvim',
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    {
      'williamboman/mason.nvim',
      opts = {
        registries = {
          'github:nvim-java/mason-registry',
          'github:mason-org/mason-registry',
        },
      },
    },
  },
  config = function()
    require('java').setup {}
    require('lspconfig').jdtls.setup {
      --      on_attach = require('plugins.configs.lspconfig').on_attach,
      --      capabilities = require('plugins.configs.lspconfig').capabilities,
      --      filetypes = { 'java' },
      jsettings = {
        java = {
          configuration = {
            runtimes = {
              {
                name = "JavaSE-21",
                path = "/opt/jdk-21",
                default = true,
              }
            }
          }
        }
      }
    }
  end,
}
