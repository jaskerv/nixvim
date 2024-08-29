{
  plugins.alpha =
    let
      header = [
        "░░░░░██╗░█████╗░███╗░░██╗░█████╗░██╗░██████╗  ███╗░░██╗██╗░░░██╗██╗███╗░░░███╗"
        "░░░░░██║██╔══██╗████╗░██║██╔══██╗╚█║██╔════╝  ████╗░██║██║░░░██║██║████╗░████║"
        "░░░░░██║██║░░██║██╔██╗██║██║░░██║░╚╝╚█████╗░  ██╔██╗██║╚██╗░██╔╝██║██╔████╔██║"
        "██╗░░██║██║░░██║██║╚████║██║░░██║░░░░╚═══██╗  ██║╚████║░╚████╔╝░██║██║╚██╔╝██║"
        "╚█████╔╝╚█████╔╝██║░╚███║╚█████╔╝░░░██████╔╝  ██║░╚███║░░╚██╔╝░░██║██║░╚═╝░██║"
        "░╚════╝░░╚════╝░╚═╝░░╚══╝░╚════╝░░░░╚═════╝░  ╚═╝░░╚══╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝"
      ];
    in
    {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 3;
        }
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = header;
        }
        {
          type = "padding";
          val = 5;
        }
        {
          opts = {
            position = "center";
          };
          type = "text";
          val = "Leader key <space>";
        }
        {
          type = "padding";
          val = 3;
        }
        {
          type = "group";
          opts = {
            spacing = 2;
          };
          val =
            let
              mkButton = shortcut: cmd: val: hl: {
                type = "button";
                inherit val;
                opts = {
                  inherit hl shortcut;
                  keymap = [
                    "n"
                    shortcut
                    cmd
                    { }
                  ];
                  position = "center";
                  cursor = 0;
                  width = 40;
                  align_shortcut = "right";
                  hl_shortcut = "Keyword";
                };
              };
            in
            [
              (mkButton "n" "<CMD>ene<CR>" "✨ New File" "Operator")
              (mkButton "f" "<CMD>lua require('telescope.builtin').find_files({hidden = true})<CR>" "🔍 Find File" "Operator")
              (mkButton "e" "<CMD>Neotree source=filesystem toggle float<cr>" "📂 Open Project Explorer" "Operator")
              (mkButton "o" "<CMD>Telescope oldfiles<cr>" "🎅 Open Recent Files" "Operator")
              (mkButton "q" "<CMD>qa<CR>" "💣 Quit Neovim" "String")
            ];
        }
      ];
    };
}
