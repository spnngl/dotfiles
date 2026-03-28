# config.nu
#
# Installed by:
# version = "0.110.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings,
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

use std/formats *

# Environment Settings
$env.EDITOR = "nvim"

# ENV_CONVERSIONS: Specifies how environment variables are converted.
# from_string: Convert from string to Nushell value on startup.
# to_string: Convert back to string when running external commands.
# Note: OS Path variable is automatically converted before env.nu loads.
$env.ENV_CONVERSIONS = {}

# Example: Convert XDG_DATA_DIRS to/from a list:
# $env.ENV_CONVERSIONS = $env.ENV_CONVERSIONS | merge {
#     "XDG_DATA_DIRS": {
#         from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
#         to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
#     }
# }

# NU_LIB_DIRS (const): Directories searched by `use` and `source` commands.
# Default includes <config-dir>/scripts and <data-dir>/completions.
const NU_LIB_DIRS = []

# Example: Add custom directories:
# const NU_LIB_DIRS = [
#     ($nu.default-config-dir | path join 'scripts')
#     ($nu.data-dir | path join 'completions')
# ]
# An environment variable version ($env.NU_LIB_DIRS) is searched after the constant.

# NU_PLUGIN_DIRS (const): Directories searched for plugin binaries.
# Default includes <config-dir>/plugins.
const NU_PLUGIN_DIRS = []

# Example: Add plugin directories:
# const NU_PLUGIN_DIRS = [
#     ($nu.default-config-dir | path join 'plugins')
# ]


# History-related Settings
$env.config.history.file_format = "sqlite"


# Miscellaneous Settings
$env.config.show_banner = false


# Commandline Editor Settings
$env.config.edit_mode = "vi"
$env.config.buffer_editor = ["nvim"]


# Completions Behavior
$env.config.show_hints = true
$env.config.completions.algorithm = "fuzzy"


# Error Display Settings
$env.config.error_style = "nested"
$env.config.display_errors.exit_code = true


# Filesize Display
$env.config.filesize.unit = "binary"


# Path Manipulation

# Example: Append to path:
# $env.PATH ++= [ "~/.local/bin" ]

# Example: Prepend to path:
# $env.PATH = [ "~/.local/bin" ] ++ $env.PATH

# Example: Using std library path add (prepends by default):
# use std/util "path add"
# path add "~/.local/bin"
# path add ($env.CARGO_HOME | path join "bin")

# Remove duplicate directories:
$env.PATH = ($env.PATH | uniq)
