{
  plugins.lsp = {
    enable = true;
    servers = {
      # cssls = {
      #   enable = true;
      # };
      docker-compose-language-service = {
        enable = true;
      };
      dockerls = {
        enable = true;
      };
      # eslint = {
      #   enable = true;
      # };
      golangci-lint-ls = {
        enable = true;
      };
      gopls = {
        enable = true;
      };
      # html = {
      #   enable = true;
      # };
      lua-ls = {
        enable = true;
      };
      marksman = {
        enable = true;
      };
      nil-ls = {
        enable = true;
      };
      pyright = {
        enable = true;
      };
      sqls = {
        enable = true;
      };
      tailwindcss = {
        enable = true;
      };
      terraformls = {
        enable = true;
      };
      tsserver = {
        enable = true;
      };
      typos-lsp = {
        enable = true;
      };
      yamlls = {
        enable = true;
      };
    };
    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        gI = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        gT = {
          action = "type_definition";
          desc = "Type Definition";
        };
        K = {
          action = "hover";
          desc = "Hover";
        };
        "<leader>cw" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
      };
      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "[d" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };
}
