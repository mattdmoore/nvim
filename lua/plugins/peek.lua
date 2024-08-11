return {
  "toppair/peek.nvim",
  specs = {
    {
      "AstroNvim/astrocore",
      ---@type AstroCoreOpts
      opts = {
        autocmds = {
            preview_mappings = {
            {
              event = "BufEnter",
              desc = "Load peek-nvim mappings on Markdown buffer attach",
              pattern = "*.md",
              callback = function(args)
                require("astrocore").set_mappings({
                  n = {
                    ["<Leader>lp"] = { function() require("peek").open() end, desc = "Open preview window" },
                    ["<Leader>lP"] = { function() require("peek").close() end, desc = "Close preview window" },
                  },
                }, { buffer = args.buf })
              end,
            },
          },
        },
      },
    },
  },
  opts = {
    app = "firefox",
  },
}
