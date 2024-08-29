{
  globals.mapleader = " ";

  keymaps = [
    # General maps
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
      options = {
        desc = "Move Highlighted group up";
      };
    }
    {
      mode = "v";
      key = "K";
      action = ":m '>-2<CR>gv=gv";
      options = {
        desc = "Move Highlighted group down";
      };
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
      options = {
        desc = "Move line up without cursor change";
      };
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
      options = {
        desc = "Page down";
      };
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
      options = {
        desc = "Page up";
      };
    }
    {
      mode = "n";
      key = "n";
      action = "nzzzv";
      options = {
        desc = "Next";
      };
    }
    {
      mode = "n";
      key = "N";
      action = "Nzzzv";
      options = {
        desc = "Back";
      };
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "[[_dP]]";
      options = {
        desc = "Paste without losing copied text";
      };
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>y";
      action = "\"+y";
      options = {
        desc = "Yank to system clipboard";
      };
    }
    {
      mode = "n";
      key = "<leader>Y";
      action = "\"+Y";
      options = {
        desc = "Yank to system clipboard";
      };
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>d";
      action = "\"_d";
      options = {
        desc = "Delete to void";
      };
    }
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
      options = {
        desc = "Unmap Q";
      };
    }
    {
      mode = "n";
      key = "<leader>s";
      action = "[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]";
      options = {
        desc = "Replace word";
      };
    }
    {
      mode = "n";
      key = "<leader>x";
      action = "<cmd>!chmod +x %<CR>";
      options = {
        desc = "Make file executable";
        silent = true;
      };
    }
  ];
}
