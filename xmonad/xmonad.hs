import XMonad
import XMonad.Actions.CycleWindows
import XMonad.Util.EZConfig

main = do
    xmonad $ def
        { borderWidth        = 2
        , terminal           = "kitty"
        , normalBorderColor  = "#111314"
        , focusedBorderColor = "#B7BBB7" }

        -- Unbind M-p from running dmenu
        -- And main movement/resize keys
        `removeKeysP` 

        [ ("M-p") 
        ]

        -- Rebind the movement keys
        `additionalKeysP`
        [ ("M-d", spawn "dmenu_run") 
        ]

