local function scroll(movement, key_no_noice_lsp)
  return function()
    if not require("noice.lsp").scroll(movement) then
      return key_no_noice_lsp
    end
  end
end

return {
  {
    "folke/noice.nvim",
    keys = {
      -- stylua: ignore start
      -- first remove:
      { "<c-f>", false, mode = { "n", "s" ,"i" } },
      { "<c-b>", false, mode = { "n", "s", "i" } },
      -- redefine, skip insert:
      { "<c-j>", scroll(4, "<c-f>"), silent = true, expr = true, desc = "Scroll forward", mode = { "i" }, },
      { "<c-l>", scroll(-4, "<c-b>"), silent = true, expr = true, desc = "Scroll backward", mode = { "i" }, },
      -- stylua: ignore end
    },
  },
}
