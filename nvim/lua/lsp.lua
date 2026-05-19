local lsp_dir = vim.fn.stdpath("config") .. "/lsp/"
local files = vim.fn.globpath(lsp_dir, "*.lua", false, true)

for _, file_path in ipairs(files) do
    local lsp_name = vim.fs.basename(file_path):sub(1, -5)
    vim.lsp.enable(lsp_name)
end
