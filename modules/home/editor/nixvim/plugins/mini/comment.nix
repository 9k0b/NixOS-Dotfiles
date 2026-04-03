{ pkgs, ... }:

{

  programs.nixvim = {
    plugins = {
      mini-comment = {
        enable = true;
        settings = {
          hooks = {
            post = lib.nixvim.mkRaw "function() end";
            pre = lib.nixvim.mkRaw "function() end";
          };
          mappings = {
            comment = "gc";
            comment_line = "gcc";
            comment_visual = "gc";
            textobject = "gc";
          };
          options = {
            ignore_blank_line = false;
            pad_comment_parts = true;
            start_of_line = false;
          };
        };
      };
    };
  };
}
