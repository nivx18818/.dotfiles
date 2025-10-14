local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
autocmd("TextYankPost", {
  group = augroup("highlight_yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Workaround for vscode-neovim UI desync (issue https://github.com/vscode-neovim/vscode-neovim/issues/2117)

-- 1. Redraw on CursorHold (idle for some time)
autocmd('CursorHold', {
  group = augroup('VSCodeRedrawFix', { clear = true }),
  callback = function()
    vim.cmd('silent! mode')  -- triggers a lightweight redraw
  end,
})

-- 2. Redraw immediately after text changes (e.g., visual delete)
autocmd({ "TextChanged", "TextChangedI" }, {
  group = augroup('RedrawOnDelete', { clear = true }),
  callback = function()
    if vim.fn.mode() == 'n' then
      vim.cmd('silent! mode')  -- refresh UI after delete/insert
    end
  end,
})
