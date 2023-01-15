local api = vim.api
local osGroup = api.nvim_create_augroup("OmniSharpVim", { clear=true })

api.nvim_create_autocmd("FileType", {
    group = "OmniSharpVim",
    pattern = "cs",
    command = [[ nnoremap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition) ]]
})

api.nvim_create_autocmd("FileType", {
    group = "OmniSharpVim",
    pattern = "cs",
    command = [[ inoremap <silent> ,s <Plug>(omnisharp_signature_help) ]]
})

api.nvim_create_autocmd("FileType", {
    group = "OmniSharpVim",
    pattern = "cs",
    command = [[ nnoremap <silent> <buffer> <leader>osd <Plug>(omnisharp_documentation) ]]
})

api.nvim_create_autocmd("FileType", {
    group = "OmniSharpVim",
    pattern = "cs",
    command = [[ nnoremap <silent> <buffer> <leader>ospd <Plug>(omnisharp_preview_definition) ]]
})
