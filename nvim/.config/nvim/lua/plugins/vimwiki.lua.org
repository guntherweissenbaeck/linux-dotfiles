return {
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Documents/vimwiki/",
          filetype = "markdown",
          syntax = "markdown",
          ext = ".md",
          links_space_char = "_",
        },
      }
      vim.g.vimwiki_ext2syntax = { [".md"] = "markdown" }
      vim.g.vimwiki_use_mouse = 1
      vim.g.vimwiki_markdown_link_ext = 1
      vim.g.vimwiki_folding = "custom"
    end,
  },
}
