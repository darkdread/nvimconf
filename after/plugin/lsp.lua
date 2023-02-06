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

local wsl_omnisharp = function()
    local omnisharp_bin = '/home/walson/.local/share/nvim/mason/packages/omnisharp/omnisharp'
    --omnisharp_bin = '/home/walson/test/OmniSharp'
    --omnisharp_bin = '/home/walson/test/omnisharp/OmniSharp.exe'
    omnisharp_bin = '/home/walson/dev/omnisharp-roslyn/OmniSharp.exe'
    local solution_dir = 'C:\\dev\\unity-projects\\ClownFiesta'
    local omnisharp_cmd = {
        omnisharp_bin, '-z', '-v', '-s', solution_dir, '--languageserver', '--hostPID', tostring(pid), 'DotNet:enablePackageRestore=false', '--encoding', 'utf-8',
        'Sdk:IncludePrereleases=true'
    }

    lsp.configure('omnisharp', {
        on_attach = function(client, bufnr)
            print('hello omnisharp from lsp.lua')
            --require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
        end,
        root_dir = function(filename, bufnr)
            return solution_dir
        end,
        on_new_config = function(new_config, new_root_dir)
            new_config.cmd = omnisharp_cmd
        end,
        cmd = omnisharp_cmd
    })
end

wsl_omnisharp()
lsp.setup()
