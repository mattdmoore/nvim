return {
  "akinsho/toggleterm.nvim",
  opts = {
    shell = "fish",
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>ts"] = {
            function()
              if vim.fn.executable "spotify_player" then
                require("astrocore").toggle_term_cmd { cmd = "spotify_player", direction = "float" }
              end
            end,
            desc = "ToggleTerm spotify",
          },
        },
      },
    },
  },
}
