---@type vim.lsp.Config
return {
  cmd = { 'csharp-ls' },
  filetypes = { 'cs' },
  root_markers = {
    function(name, _)
      return name:match('%.slnx?$') or name:match('%.csproj$')
    end,
    '.git',
  },
  init_options = {
    AutomaticWorkspaceInit = true,
  },
  get_language_id = function(_, ft)
    if ft == 'cs' then
      return 'csharp'
    end
    return ft
  end,
}
