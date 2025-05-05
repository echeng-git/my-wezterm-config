# my-wezterm-config

My WezTerm confg for WSL2. Shamelessly stolen from [here](https://github.com/waridh/wezterm-config/blob/main/wezterm.lua) with a few other things.

## Setup

Since you are working on WSL2, you will need to create the following environment variables under 'System variables':

| Variable          | Value                              |
|-------------------|------------------------------------|
| `HOME`            | `C:\Users\<your username>`         |
| `XDG_CONFIG_HOME` | `C:\Users\<your username>\.config` |

> Make sure that the `.config` path exists.

 Create the `wezterm.lua` file from the repository into the `%XDG_CONFIG_HOME%` path.

## Bindings

> `<leader>` is defined as `<C+a>`.

| Binding                 | Description                              |
|-------------------------|------------------------------------------|
| `<leader> + Shift + \|` | Split and create a new pane horizontally |
| `<leader> + -`          | Split and create a new pane vertically   |
| `<leader> + d`          | Delete the current pane                  |
| `<leader> + h`          | Navigate to the left pane                |
| `<leader> + j`          | Navigate to the below pane               |
| `<leader> + k`          | Navigate to the above pane               |
| `<leader> + l`          | Navigate to the right pane               |
| `Control + Shift + C`   | Copy selection to system clipboard       |
| `Control + Shift + V`   | Paste from system clipboard              |
| `<leader> + t`          | Create a new tab                         |
| `<leader> + T`          | Close the current tab                    |
| `Control + Shift + H`   | Move to previous tab                     |
| `Control + Shift + L`   | Move to next tab                         |
| `<leader> + 1..9`       | Navigate to a tab number from 1 to 9     |
