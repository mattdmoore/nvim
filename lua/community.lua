-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Style
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.color.transparent-nvim" },
  { import = "astrocommunity.media.image-nvim" },

  -- Productivity
  { import = "astrocommunity.editing-support.conform-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.workflow.bad-practices-nvim" },

  -- Language packs
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
}
