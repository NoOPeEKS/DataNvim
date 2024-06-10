# DataVim
DataVim is a Neovim setup prepared for Data Science and to easily run code and interact with Jupyter Notebooks without ever leaving your terminal. It also provides a well structured config that makes it an easy starting point to extend it as you want.

## Requirements
- Kitty 0.28+
- Neovim 0.9.4+
- Python 3.10+
- Required python packages:
    - [`pynvim`](https://github.com/neovim/pynvim)
    - [`jupyter_client`](https://github.com/jupyter/jupyter_client)
    - [`cairosvg`](https://cairosvg.org)
    - `plotly` and `kaleido`
    - `pyperclip`
    - `nbformat`
    - `pillow`
- Quarto
- Npm 10.8.1+
- ImageMagick
- Lua 5.1

## Setting up for the first time
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
- Open your notebook with the virtual environment activated and load the kernel with `:MoltenInit project_name`
- Start executing cells

