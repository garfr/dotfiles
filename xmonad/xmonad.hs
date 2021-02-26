import XMonad
import XMonad.Util.EZConfig
import XMonad.Hooks.ManageDocks
import XMonad.Layout.Spiral
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing (spacingRaw, Border(..)) 

myStartup :: X ()
myStartup = do
    spawn "~/.config/polybar/run.sh"


bindKeys =
    \x -> 
        x
        `removeKeysP`
        [ "M-p"
        , "M-S-q" ]

        `additionalKeysP`
        [ ("M-d", spawn "rofi -show run")
        ]

myLayout = avoidStruts $ tallLayout ||| spiralLayout ||| fullscreenLayout
    where
        fullscreenLayout = Full
        tallLayout = Tall 1 (3/100) (1/2)
        spiralLayout = spiral (6/7)
         
main = do
    xmonad myConfig
    where
        myConfig = docks $ bindKeys $ def
            { borderWidth        = 2
            , terminal           = "kitty"
            , layoutHook = myLayout
            , startupHook = myStartup
            , normalBorderColor  = "#111314"
            , focusedBorderColor = "#B7BBB7" }
