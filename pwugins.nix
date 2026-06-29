_: {
  config.vim = {
    notify.nvim-notify = {
      enable = true;
    };

    autocomplete.blink-cmp = {
      enable = true;
      friendly-snippets.enable = true;
    };

    autopairs.nvim-autopairs = {
      enable = true;
    };

    binds = {
      cheatsheet.enable = true;
      hardtime-nvim.enable = true;
      whichKey.enable = true;
    };

    clipboard = {
      enable = true;
      providers.wl-copy.enable = true;
    };

    comments.comment-nvim.enable = true;

    dashboard.alpha.enable = true;

    diagnostics = {
      nvim-lint = {
        enable = true;
        lint_after_save = true;
      };

      presets = {
        biomejs.enable = true;
        deadnix.enable = true;
        htmlhint.enable = true;
        luacheck.enable = true;
        mypy.enable = true;
        shellcheck.enable = true;
        sqruff.enable = true;
        statix.enable = true;
        taplo.enable = true;
      };
    };

    filetree.neo-tree.enable = true;

    formatter.conform-nvim.enable = true;

    fzf-lua.enable = true;

    navigation.harpoon.enable = true;

    presence.neocord.enable = true;

    statusline.lualine = {
      enable = true;
      theme = "gruvbox-material";
    };

    tabline.nvimBufferline = {
      enable = true;
    };

    telescope.enable = true;

    terminal.toggleterm = {
      enable = true;
      lazygit.enable = true;
    };

    treesitter = {
      autotagHtml = true;
      context.enable = true;
      enable = true;
      highlight.enable = true;
      indent.enable = true;
    };

    ui.colorizer.enable = true;

    utility.nix-develop.enable = true;

  };
}
