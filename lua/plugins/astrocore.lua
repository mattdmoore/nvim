return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>ts"] = {
            function() require("astrocore").toggle_term_cmd { cmd = "spotify_player", direction = "float" } end,
            desc = "ToggleTerm spotify",
          },
        },
      },
    },
  },
}
