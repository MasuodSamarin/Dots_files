-- Options
--local parsers = require'nvim-treesitter.parsers'
local Type = {GLOBAL_OPTION = "o", WINDOW_OPTION = "wo", BUFFER_OPTION = "bo"}
local add_options = function(option_type, options)
  if type(options) ~= "table" then
    error 'options should be a type of "table"'
    return

  end
  local vim_option = vim[option_type]
  for key, value in pairs(options) do
    vim_option[key] = value
  end
end

local Option = {}
Option.g = function(options)
  add_options(Type.GLOBAL_OPTION, options)
end
Option.w = function(options)
  add_options(Type.WINDOW_OPTION, options)
end
Option.b = function(options)
  add_options(Type.BUFFER_OPTION, options)
end

Option.g {
  ai = true,
  si = true,
  termguicolors = true,
  mouse = "a",
  clipboard = "unnamedplus",
  hidden = true,
  showmode = false,
  timeoutlen = 3e3,
  tabstop = 3,
  shiftwidth = 3,
  cmdheight = 1,
  expandtab = true,
  conceallevel = 0,
  laststatus = 2,
  wrap = false,
  linebreak = false,
  list = true,
  listchars = "tab:»·,trail:-",
  wildmenu = true,
  wildmode = "full",
  autoread = true,
  updatetime = 500,
  redrawtime = 500,
  fillchars = vim.o.fillchars .. "vert:│",
  -- backupdir=os.dir("~/.vim/backup"),
  -- directory=os.dir("~/.vim/swap"),
  -- undodir=os.dir('/home/elsuizo/.vim/undo/'),
  virtualedit = "onemore",
  guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20",
  complete = ".,w,b,u,t,k",
  completeopt = "menu,menuone,noinsert,noselect",
  formatoptions = "jtcroql",
  inccommand = "nosplit",
  shortmess = "atIcF",
  isfname = table.concat(
    vim.tbl_filter(
      function(entry)
        if entry == "=" then
          return false
        else
          return true
        end
      end,
      vim.split(vim.o.isfname, ",")
    ),
    ","
  ),
  swapfile = false,
  diffopt = "internal,filler,closeoff,algorithm:patience,iwhiteall",
  splitbelow = true,
  emoji = false,
  indentexpr="nvim_treesitter#indent()"

}

Option.b {
  swapfile = false,
  shiftwidth = 2,
  indentexpr="nvim_treesitter#indent()"
}

Option.w {
  number = true,
  relativenumber = true,
  --numberwidth = 1,
  signcolumn = "no",
  spell = false,
  foldlevel = 99,
  foldmethod = "syntax",
  -- foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  foldtext = "v:lua.foldText()",
  linebreak = true
}

vim.g.clipboard = {
  name = "xclip-xfce4-clipman",
  copy = {["+"] = "xclip -selection clipboard", ["*"] = "xclip -selection clipboard"},
  paste = {["+"] = "xclip -selection clipboard -o", ["*"] = "xclip -selection clipboard -o"},
  cache_enabled = true
}

-- TODO(elsuizo): no se para que carajo es esto
vim.cmd('let &t_8f = "\\<Esc>[38;2;%lu;%lu;%lum"')
vim.cmd('let &t_8b = "\\<Esc>[48;2;%lu;%lu;%lum"')

-- python versions
vim.g.python_host_prog = '/home/elsuizo/.pyenv/versions/neovim2/bin/python'
vim.g.python3_host_prog = '/home/elsuizo/.pyenv/versions/neovim/bin/python3'

-- snippets directorys
-- vim.g.neosnippet#snippets_directory = '~/.vim/plugged/neosnippet-snippets/neosnippets, ~/.vim/My_snippets'
-- rust options
vim.g.rustfmt_command = "rustfmt +nightly"
vim.g.rustfmt_autosave = 0
vim.g.rustfmt_emit_files = 1
vim.g.rustfmt_fail_silently = 0
vim.g.rust_clip_command = 'xclip -selection clipboard'
vim.g.racer_cmd = "/home/elsuizo/.cargo/bin/racer"
vim.g.racer_experimental_completer = 1

-- latex options
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.tex_flavor = 'latex'

-- vim move options
vim.g.move_key_modifier = 'C'

-- deoplete
vim.g["deoplete#enable_at_startup"] = 1

return Option
