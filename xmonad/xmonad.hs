import XMonad
import XMonad.Util.EZConfig

main = do
    xmonad $ def
        { borderWidth        = 2
        , terminal           = "kitty"
        , normalBorderColor  = "#cccccc"
        , focusedBorderColor = "#cd8b00" }
        `additionalKeysP`
        [ ("M-d", spawn "dmenu_run") ]

