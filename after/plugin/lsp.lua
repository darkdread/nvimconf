local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.setup_nvim_cmp({
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp', keyword_length = 2},
        {name = 'buffer', keyword_length = 2},
        {name = 'luasnip', keyword_length = 2},
        {name = 'nvim_lsp_signature_help'},
    }
})

--vim.lsp.set_log_level('info')
vim.lsp.set_log_level('debug')

local pid = vim.fn.getpid()
local omnisharp_bin = '/home/walson/.local/share/nvim/mason/packages/omnisharp/omnisharp'

lsp.configure('omnisharp', {
    on_attach = function(client, bufnr)
        print('hello omnisharp from lsp.lua')
    end,
    cmd = {
        omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)
    }
})
lsp.setup()
