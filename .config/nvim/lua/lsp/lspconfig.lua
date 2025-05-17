return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap

    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)

        -- Print the client info for debugging - this will appear in :messages
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client then
          print(string.format("LSP attached: %s (cmd: %s)",
            client.name,
            vim.inspect(client.config.cmd)))
        end

      end,
    })

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      update_in_insert = false,
      underline = true,
      severity_sort = true,
    })

 -- Mason setup without Verible
    mason.setup()
  -- Removed the ensure installed to make sure that the mason doesn't config the servers 
        --[[
    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "bashls",
        "clangd",
        "pyright",
        --"verible"
      },
    })
        ]]--

    -- Manual server setups (this ensures only one instance of each server)
    -- Python
    lspconfig.pyright.setup({
      capabilities = capabilities,
    })
    -- C/C++
    lspconfig.clangd.setup({
      capabilities = capabilities,
      root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
    })
    -- Lua
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    -- Bash
    lspconfig.bashls.setup({
      capabilities = capabilities,
    })
    -- Verible for Verilog and SystemVerilog (only one instance)
    -- Manual configuration since the mason was interferring with the command passing for the verible --rules_config_search
    lspconfig.verible.setup({
      capabilities = capabilities,
      cmd = {"verible-verilog-ls", "--rules_config_search"},
      filetypes = { "verilog", "systemverilog" },
      root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname) or lspconfig.util.path.dirname(fname)
      end,
      on_attach = function(client, bufnr)
        -- Debug output
        --print("Verible LSP attached to buffer: " .. bufnr)
        --print("Verible command: " .. vim.inspect(client.config.cmd))
        
        -- Automatically format on save
        vim.api.nvim_create_autocmd("BufWritePost", {
          pattern = "*.v",
          callback = function()
            vim.lsp.buf.format({ async = false })
          end,
        })
      end,
    })
  end,
}
