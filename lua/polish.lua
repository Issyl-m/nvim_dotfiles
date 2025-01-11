vim.opt.clipboard = "unnamed,unnamedplus"

vim.o.textwidth = 0
vim.o.wrapmargin = 0
-- visual wrap (no real line cutting is made)
vim.o.wrap = true
vim.o.linebreak = true -- breaks by word rather than character

vim.o.spelllang = "en_us,es"
vim.o.spell = true

vim.o.foldlevelstart = 99 -- 99: open "everything"
-- vim.o.foldenable = false
-- vim.cmd([[ set nofoldenable]])

if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
