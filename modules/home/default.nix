{
  pkgs,
  ...
}:

{
  imports = [
    ./misc/default.nix
    ./sway/default.nix
    ./terminal/default.nix
  ];
}
