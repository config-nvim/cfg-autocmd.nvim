# autocmd.nvim
  - [x] auto-save using plugin `use '907th/vim-auto-save'`
  - [x] flutter hot reload
<details>
<summary> config  </summary>

```lua
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
```
</details>

