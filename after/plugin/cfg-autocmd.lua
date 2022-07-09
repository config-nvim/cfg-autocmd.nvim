vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged"}, {
  pattern = {"*.html", "*.js", "*.tex", "*.c", "*.lua", "*.h", "*.dart"},
  callback = function ()
      vim.b.auto_save = 1
  end  ,
})

vim.api.nvim_create_autocmd({"InsertLeave", "TextChanged"}, {
  pattern = {"*.dart"},
  callback = function ()
    os.execute('killflutter')
  end  ,
})

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank {
            higroup = "IncSearch",
            timeout = 300,
            on_visual = true,
        }
    end,
})

