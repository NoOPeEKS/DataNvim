# DataNvim
DataNvim is a custom Neovim distribution prepared for Data Science and to easily run code and interact with Jupyter Notebooks without ever leaving your terminal. It also provides a well structured config that makes it an easy starting point to extend it as you want.

![DataNvim](https://github.com/NoOPeEKS/DataNvim/assets/73296276/4c22d6bd-e8fe-4151-a18f-05694a0154c2)

## Requirements
- GCC
- Kitty 0.28+
- Neovim 0.9.4+
- Python 3.10+
- Ripgrep 11.0+
- Quarto
- Npm 10.8.1+
- ImageMagick
- Lua 5.1
- Required python packages:
    - [`pynvim`](https://github.com/neovim/pynvim)
    - [`jupyter_client`](https://github.com/jupyter/jupyter_client)
    - [`cairosvg`](https://cairosvg.org)
    - [`plotly`](https://plotly.com/python/) and [`kaleido`](https://github.com/plotly/Kaleido)
    - [`pyperclip`](https://github.com/asweigart/pyperclip)
    - [`nbformat`](https://github.com/jupyter/nbformat)
    - [`pillow`](https://pypi.org/project/pillow/)

## Feature Highlights
- Carefully designed [configuration](#Configuration) file structure for easy extension and modification
- Beautiful colorscheme from [catppuccin](https://github.com/catppuccin/nvim)
- Powerful file explorer with [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Fuzzy search and preview files, words and gitfiles thanks to [telescope](https://github.com/nvim-telescope/telescope.nvim)
- Preconfigured highlighting and Lsp Autocompletion for Python thanks to [treesitter](https://github.com/nvim-treesitter/nvim-treesitter) and [nvim-lsp-config](https://github.com/neovim/nvim-lspconfig)
- Extensible formatting, diagnostics, code actions and completion with [none-ls](https://github.com/nvimtools/none-ls.nvim)
- Complete Jupyter Notebook interaction set up thanks to [molten.nvim](https://github.com/benlubas/molten-nvim), [quarto](https://github.com/quarto-dev/quarto-nvim), and [jupytext](https://github.com/GCBallesteros/jupytext.nvim)
- Simple but beautiful status bar thanks to [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- Easy buffer navigation with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

## Setting up for the first time
>[!WARNING]
> DataNvim will only render images if the terminal it's used on is Kitty!

- Install Kitty
- Install [luarocks](https://luarocks.org/#quick-start), Lua language's package manager.
- Install the `magick` rock with: `luarocks --local --lua-version=5.1 install magick`
- Create a virtual environment for Neovim in `~/.virtualenvs/`
```bash
mkdir ~/.virtualenvs
cd ~/.virtualenvs
python -m venv neovim
```
- Activate the virtual environment and install the beforementioned python packages with:
```bash
source ~/.virtualenvs/neovim/bin/activate
pip install ipykernel pynvim jupyter_client cairosvg plotly kaleido pyperclip nbformat pillow
deactivate
```
- Install ipykernel in your project-scoped virtual environment
```bash
cd whatever/directory
source venv/bin/activate
pip install ipykernel
python -m ipykernel --user --name project_name
```
- Backup your current Neovim configuration
```bash
mv ~/.config/nvim ~/config/nvim.bak
```
- Install DataNvim's configuration
```bash
git clone https://github.com/NoOPeEKS/DataNvim.git ~/.config/nvim && nvim
```
- Run the following commands:
```vim
:UpdateRemotePlugins
:MasonInstallAll
```
- Open your notebook with the virtual environment activated and load the kernel with `:MoltenInit project_name`
- Start executing cells with [Keybindings](##Keybindings)


## Keybindings

### Vim actions
| Key                                                                                      | Mode | Action                              |
| ---------------------------------------------------------------------------------------- | :--: | ----------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>                                                           |  i   | Navigate left in insert mode        |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>                                                           |  i   | Navigate down in insert mode        |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>                                                           |  i   | Navigate up in insert mode          |
| <kbd>Ctrl</kbd> + <kbd>l</kbd>                                                           |  i   | Navigate right in insert mode       |
| <kbd>Ctrl</kbd> + <kbd>s</kbd>                                                           |i, v, n| Save current buffer                |
| <kbd>Space</kbd> + <kbd>x</kbd>                                                            |  n   | Close current buffer                |

### Plugins

#### NvimTree
| Key                                                                                      | Mode | Action                              |
| ---------------------------------------------------------------------------------------- | :--: | ----------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>n</kbd>                                                           |  n   | Toggle file explorer                |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>                                                           |  n   | Focus file explorer                 |

#### None-ls
| Key                                                                                      | Mode | Action                              |
| ---------------------------------------------------------------------------------------- | :--: | ----------------------------------- |
| <kbd>Space</kbd> + <kbd>g</kbd> + <kbd>f</kbd>                                           |  n   | Format current buffer               |

#### Molten.nvim
| Key                                                                                      | Mode | Action                              |
| ---------------------------------------------------------------------------------------- | :--: | ----------------------------------- |
| <kbd>Space</kbd> + <kbd>m</kbd> + <kbd>i</kbd>                                           |  n   | Molten Init Python Kernel           |
| <kbd>Space</kbd> + <kbd>m</kbd> + <kbd>l</kbd>                                           |  n   | Molten Evaluate Current Line        |
| <kbd>Space</kbd> + <kbd>m</kbd> + <kbd>v</kbd>                                           |  v   | Molten Evaluate Visual Selection    |
| <kbd>Space</kbd> + <kbd>m</kbd> + <kbd>o</kbd>                                           |  n   | Molten Enter Cell Output            |
| <kbd>Space</kbd> + <kbd>m</kbd> + <kbd>h</kbd>                                           |  n   | Molten Hide Output                  |
