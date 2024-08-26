{
  plugins.neogit = {
    enable = true;
    settings = {
      integrations = {
        diffview = true;
        fzf-lua = true;
        telescope = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>Neogit<cr>";
      options = {
        desc = "Neogit";
      };
    }
  ];
}
