-- 基本設定（LazyVimデフォルトからの上書き）
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.updatetime = 250

-- shell用（2スペース）
vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})
