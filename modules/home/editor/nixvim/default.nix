{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixvim.homeModules.nixvim
    ./plugins/default.nix
    #./options/default.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
  };
}
