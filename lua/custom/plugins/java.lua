return {
  'nvim-java/nvim-java',
  config = false,
  dependencies = {
    {
      'neovim/nvim-lspconfig',
      opts = {
        servers = {
          -- Your JDTLS configuration goes here
          jdtls = {
            settings = {
              java = {
                configuration = {
                  runtimes = {
                    {
                      name = 'JavaSE-23',
                      path = '/opt/homebrew/opt/openjdk@23',
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  },
}
