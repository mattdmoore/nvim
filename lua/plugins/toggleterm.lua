local shell
if jit.os == "Linux" then
  shell = "fish"
else
  shell = "zsh"
end

return {
  "akinsho/toggleterm.nvim",
  opts = {
    shell = shell,
  },
}
