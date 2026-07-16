return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Crucial : charge ce plugin en premier
  lazy = false,    -- Empêche le chargement différé pour le thème
  opts = {
    flavour = "mocha", -- Choix : "latte", "frappe", "macchiato", "mocha"
    transparent_background = false,
    term_colors = true,
    integrations = {
      cmp = true,        -- Autocomplétion
      gitsigns = true,   -- Git signs
      nvimtree = true,   -- Arborescence de fichiers
      treesitter = true, -- Syntaxe
      telescope = { enabled = true },
      which_key = true,  -- Raccourcis clavier
    },
  },
  config = function(_, opts)
    -- Applique la configuration
    require("catppuccin").setup(opts)
    -- Active le thème (Notez le nom "catppuccin" ou "catppuccin-nvim" selon la version)
    vim.cmd.colorscheme("catppuccin")
  end,
}   
