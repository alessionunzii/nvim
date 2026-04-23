return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    version = "v1.29.0",
    opts = {
      auto_install = true,
      ensure_installed = { "jdtls" }, -- add this
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    version = "v0.1.7",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.tsserver.setup({ capabilities = capabilities })
      lspconfig.solargraph.setup({ capabilities = capabilities })
      lspconfig.html.setup({ capabilities = capabilities })
      lspconfig.lua_ls.setup({ capabilities = capabilities })

      -- DO NOT add jdtls here, nvim-jdtls handles it

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
 
  -- Add this new plugin entry
  {
    "mfussenegger/nvim-jdtls",
    ft = "java", -- only loads for .java files
    config = function()
      local jdtls = require("jdtls")

      local mason_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
      -- workspace is per-project to avoid config bleeding between projects
      local workspace = vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

      jdtls.start_or_attach({
        cmd = {
          "java",
          "-jar", vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),
          "-configuration", mason_path .. "/config_linux", -- change to config_mac or config_win if needed
          "-data", workspace,
        },
        root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }),
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })
    end,
  },
}
