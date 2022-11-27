# Compit
Compit is a plugin for NeoVim to easily compile/run your code.

### Usage
```lua
require('compit').run({})

-- to disable the prompt
require('compit').run({ prompt = false })
```
Or you make a keybind for it:
```lua
vim.api.nvim_set_keymap('n', '<leader>c', ':lua require"compit".run({})<CR>', { noremap = true })
```
After running the compile/run command compit saves it and will put it in next
time you use compit.

https://user-images.githubusercontent.com/61984114/190856812-4b817613-d045-40d7-92e1-30e8783d9620.mp4

### Installation
Packer:
```lua
use 'PythonPizzaDE/compit'
```
Plug:
```vim
Plug 'PythonPizzaDE/compit'
```
