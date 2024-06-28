return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    config = function()
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_highlight_css = "/home/cwj/github/config/markdown/md_code_highlight.css"
      vim.g.mkdp_markdown_css = "/home/cwj/github/config/markdown/inside.css"
      vim.g.mkdp_theme = "light"
    end,
    ft = { "markdown" },
    keys = {
      { "<leader>cp", "<cmd>MarkdownPreviewToggle<cr>" },
    },
  },
  {
    "KabbAmine/vCoolor.vim",
    lazy = false, --颜色选择器
    config = function()
      vim.g.vcoolor_disable_mappings = 1
      vim.g.vcoolor_custom_picker = "/usr/bin/gcolor3"
    end,
  },
  {
    "metakirby5/codi.vim", --黑客的交互式便签
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "css", "scss", "html", "javascript" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
}
