{
  plugins.toggleterm = {
    enable = true;
  };
  keymaps = [
    {
      mode = [ "n" "t" ];
      key = "<M-h>";
      action = "<cmd>ToggleTerm direction=horizontal<cr>";
      options = {
        desc = "Toggle terminal horizontally";
      };
    }
    {
      mode = [ "n" "t" ];
      key = "<M-v>";
      action = "<cmd>ToggleTerm direction=vertical<cr>";
      options = {
        desc = "Toggle terminal vertically";
      };
    }
    {
      mode = "t";
      key = "<c-e>";
      action = "<c-\\><c-n><cr>";
      options = {
        desc = "Exit terminal mode";
      };
    }
  ];
}
