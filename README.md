# Compit
Compit is a plugin for NeoVim to easily compile/run your code.

### Usage
You can execute it with the following command:
```vim
:lua require('compit').run()
```
Or you make a keybind for it:
```lua
vim.api.nvim_set_keymap('n', '<leader>c', ':lua require"compit".run()<CR>', { noremap = true })
```
After running the compile/run command compit saves it and will put it in next
time you use compit.

### Installation
Packer:
```lua
use 'PythonPizzaDE/compit'
```
Plug:
```vim
Plug 'PythonPizzaDE/compit'
```
