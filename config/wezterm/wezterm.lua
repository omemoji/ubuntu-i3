local wezterm = require 'wezterm'
wezterm.log_error("Hello!");
return {
    window_close_confirmation = "NeverPrompt",
    window_decorations = "NONE" ,
    enable_tab_bar = false,
    keys = 
    {
        {
          key = 'w',
          mods = 'CMD',
          action = wezterm.action.CloseCurrentTab { confirm = false },
        }
    },
    window_background_opacity = 0.7,
    font = wezterm.font({family="Osaka-Mono", weight="Regular"},{family="Menlo", weight="Regular"}),
    font_size = 19.0,
    colors = {
        -- The default text color
        foreground = "#ffffff",
        -- The default background color
        background = "#091822",
  
        -- Overrides the cell background color when the current cell is occupied by the
        -- cursor and the cursor style is set to Block
        cursor_bg = "silver",
        -- Overrides the text color when the current cell is occupied by the cursor
        cursor_fg = "#FFFFFF",
        -- Specifies the border color of the cursor when the cursor style is set to Block,
        -- or the color of the vertical or horizontal bar when the cursor style is set to
        -- Bar or Underline.
        cursor_border = "#52ad70",
  
        -- the foreground color of selected text
        selection_fg = "black",
        -- the background color of selected text
        selection_bg = "#ffffff",
  
        -- The color of the scrollbar "thumb"; the portion that represents the current viewport
        scrollbar_thumb = "#222222",
  
        -- The color of the split lines between panes
        split = "#444444",
  
        ansi = {"#272822", "#F92672", "#A6E22E", "#F4BF75", "#66D9EF", "#AE81FF", "#A1EFE4", "silver"},
        brights = {"#75715E", "#F92672", "#A6E22E", "#F4BF75", "#66D9EF", "#AE81FF", "#A1EFE4", "#F9F8F5"},
  
        -- Arbitrary colors of the palette in the range from 16 to 255
        indexed = {[136] = "#af8700"},
  
        -- Since: nightly builds only
        -- When the IME, a dead key or a leader key are being processed and are effectively
        -- holding input pending the result of input composition, change the cursor
        -- to this color to give a visual cue about the compose state.
        compose_cursor = "orange",
    }
}