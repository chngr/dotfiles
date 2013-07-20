import XMonad
import XMonad.Util.Run (spawnPipe)
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Layout.NoBorders
import XMonad.Util.EZConfig (additionalKeys)
import XMonad.Layout.ThreeColumns
import System.IO

myLayout = ThreeCol 1 (3/100) (1/2) ||| ThreeCol 1 (3/100) (1/2) ||| ThreeCol 1 (3/100) (1/2)
main = do
    xmproc <- spawnPipe "/usr/bin/xmobar ~/.xmobarrc"
    xmonad $ defaultConfig
        { manageHook  = manageDocks <+> manageHook defaultConfig
        , startupHook = setWMName "LG3d"
        , layoutHook  = avoidStruts $ layoutHook defaultConfig ||| noBorders Full ||| myLayout
        , logHook     = dynamicLogWithPP $ xmobarPP
                            { ppOutput = hPutStrLn xmproc
                            , ppTitle  = xmobarColor "purple" "" . shorten 50
                            }
        }
