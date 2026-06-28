{pkgs, ...}: {
  config.vim = {
    notify.nvim-notify = {
      enable = true;
    };
  };
}
