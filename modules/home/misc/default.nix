{ pkgs, ... }:

{

  imports = [
    ./spotify.nix
    ./keepassxc.nix
    ./ssh-agent.nix
  ];
}
