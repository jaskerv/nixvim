{
  plugins.telescope = {
    enable = true;
    extensions = {
      file-browser = {
        enable = true;
      };
      frecency = {
        enable = true;
      };
      fzf-native = {
        enable = true;
      };
      media-files = {
        enable = true;
      };
      ui-select = {
        enable = true;
      };
      undo = {
        enable = true;
      };
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
      };
    };
    keymaps = {
      "<leader>/" = {
        action = "live_grep";
        options = {
          desc = "Grep (root dir)";
        };
      };
      "<leader>:" = {
        action = "command_history";
        options = {
          desc = "Command History";
        };
      };
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find project files";
        };
      };
      "<leader>fw" = {
        action = "live_grep";
        options = {
          desc = "Find text";
        };
      };
      "<leader>fr" = {
        action = "resume";
        options = {
          desc = "Find resume";
        };
      };
      "<leader>fo" = {
        action = "oldfiles";
        options = {
          desc = "Find old files";
        };
      };
      "<leader>fu" = {
        action = "undo";
        options = {
          desc = "Find Undo";
        };
      };
      "<leader>fb" = {
        action = "buffers";
        options = {
          desc = "Find buffers";
        };
      };
      "<leader>fgf" = {
        action = "git_files";
        options = {
          desc = "Find git files";
        };
      };
      "<leader>fgc" = {
        action = "git_commits";
        options = {
          desc = "Find git commits";
        };
      };
      "<leader>fgs" = {
        action = "git_status";
        options = {
          desc = "Find git status";
        };
      };
      "<leader>ha" = {
        action = "autocommands";
        options = {
          desc = "Help auto Commands";
        };
      };
      "<leader>fB" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = "Find buffer fzf";
        };
      };
      "<leader>hC" = {
        action = "command_history";
        options = {
          desc = "Help command history";
        };
      };
      "<leader>hc" = {
        action = "commands";
        options = {
          desc = "Help commands";
        };
      };
      "<leader>fd" = {
        action = "diagnostics";
        options = {
          desc = "Find workspace diagnostics";
        };
      };
      "<leader>ht" = {
        action = "help_tags";
        options = {
          desc = "Help tags";
        };
      };
      "<leader>hh" = {
        action = "highlights";
        options = {
          desc = "Help highlight groups";
        };
      };
      "<leader>hk" = {
        action = "keymaps";
        options = {
          desc = "Help keymaps";
        };
      };
      "<leader>hm" = {
        action = "man_pages";
        options = {
          desc = "Help man pages";
        };
      };
      "<leader>fm" = {
        action = "marks";
        options = {
          desc = "Find mark";
        };
      };
      "<leader>ho" = {
        action = "vim_options";
        options = {
          desc = "Help vim options";
        };
      };
      "<leader>th" = {
        action = "colorscheme";
        options = {
          desc = "Colorscheme preview";
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File browser";
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = {
        desc = "File browser";
      };
    }
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
