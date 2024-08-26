{
  plugins.neo-tree = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "\\";
      action = "<cmd>Neotree source=filesystem toggle right<cr>";
    }
    {
      mode = "n";
      key = "<leader>ng";
      action = "<cmd>Neotree source=git_status toggle float<cr>";
      options = {
        desc = "Neotree git status";
      };
    }
    {
      mode = "n";
      key = "<leader>nb";
      action = "<cmd>Neotree source=buffers toggle float<cr>";
      options = {
        desc = "Neotree buffers";
      };
    }

  ];
}
