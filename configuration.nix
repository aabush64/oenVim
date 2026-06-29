_: {
  config.vim = {
    lineNumberMode = "number";
    bell = "visual";
    searchCase = "smart";
    viAlias = true;
    vimAlias = true;

    syntaxHighlighting = true;

    git = {
      enable = true;
      # git-conflict.enable = true; # Already enabled dork
      # gitsign s.enable = true;
      # neogit.enable = true;
    };

    spellcheck.enable = true;
    spellcheck.programmingWordlist.enable = true;

    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };
  };
}
