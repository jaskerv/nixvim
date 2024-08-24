{
  plugins.neo-tree = {
    enable = true;
  };

  keymaps = [
    # General maps
    {
      mode = "n";
      key = "\\";
      action = "<cmd>Neotree toggle right<cr>";
    }
  ];
}
