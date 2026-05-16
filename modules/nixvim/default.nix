{ pkgs, ... }:
{
  imports = [ ./keymaps.nix ];

  extraPlugins = with pkgs.vimPlugins; [ hardtime-nvim ];

  extraConfigLua = ''
    require("hardtime").setup()
  '';

  plugins = {
    colorizer.enable = true;
    nix.enable = true;
    nix-develop.enable = true;
  };

  viAlias = true;
  vimAlias = true;
}
