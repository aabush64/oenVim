{
  pkgs,
  alejandra,
  ...
}: {
  config.vim.lsp = {
    enable = true;
    formatOnSave = true;
    inlayHints.enable = true;

    # lspSignature.enable = true; # Is this? Needed?

    lspkind.enable = true;
    nvim-docs-view.enable = true;

    otter-nvim.enable = true;
  };

  # Add rafware alejandra for spaces :D
  # Mission failed, we'll get em next time
  # config.vim.formatter.conform-nvim =
  # let
  #   inherit (pkgs.lib.meta) getExe;
  # in
  # {
  #   enable = true;
  #   setupOpts = {
  #     formatters_by_ft.nix = "alejandra";
  #     formatters = {
  #       # Damn this ugly
  #       alejandra.command = "${getExe alejandra} --experimental-config ${./alejandra.toml}";
  #     };
  #   };
  # };

  config.vim.languages = {
    # Set defaults
    enableDAP = true;
    enableExtraDiagnostics = true;
    enableFormat = true;

    enableTreesitter = true;

    bash.enable = true;
    # Disable these because we set defaults
    # extraDiagnostics.enable = true;
    # format.enable = true;
    # lsp.enable = true;
    # treesitter.enable = true;

    # csharp = {}; # Only enable if you do SS14 stuff again that module is a *mess*
    css.enable = true;
    env.enable = true;
    fish.enable = true;
    html.enable = true;
    jq.enable = true;
    json.enable = true;
    just.enable = true;
    lua.enable = true;
    make.enable = true;
    markdown = {
      enable = true;
      extensions.render-markdown-nvim.enable = true;
      lsp.servers = ["markdown-oxide"];
    };
    nix = {
      enable = true;
      lsp.servers = ["nixd"]; # Might delete later /ref
      # format.enable = false; # Porting a custom alejandra
      format.type = ["nixfmt"];
    };
    nu.enable = true;
    python.enable = true;
    qml.enable = true;
    r.enable = true;
    rust = {
      enable = true;
      extensions.crates-nvim.enable = true;
    };
    sql.enable = true;
    tex.enable = true;
    toml.enable = true;
    typst.enable = true;
    xml.enable = true;
    yaml.enable = true;
    zig.enable = true;
  };
}
