local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local cmd = vim.api.nvim_command

null_ls.setup({
  debug = false,
  sources = {
    -- formatting.prettier, formatting.black, formatting.gofmt, formatting.shfmt,
    formatting.gofmt,
    formatting.prettier,
    formatting.shfmt,
    formatting.black.with { extra_args = { "--fast" } },
    -- formatting.clang_format, formatting.cmake_format, formatting.dart_format,
    formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }),
    -- formatting.isort, formatting.codespell.with({ filetypes = { 'markdown' } })
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
    end
    if client.resolved_capabilities.document_highlight then
      vim.api.nvim_exec(
        [[
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]   , false)
    end
  end
})
