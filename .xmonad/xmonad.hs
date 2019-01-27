import Data.Map (fromList, union)
import Data.Ratio ((%))
import XMonad
import XMonad.Hooks.ManageHelpers (doRectFloat)
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Util.WindowProperties (Property (..), propertyToQuery)
import XMonad.StackSet -- RationalRect

main :: IO ()
main = xmonad $ defaultConfig
     { borderWidth = 2
     , focusedBorderColor = "#aaa"
     , focusFollowsMouse = False
     , keys = \c -> mykeys c `union` keys defaultConfig c
     , layoutHook = smartBorders $ layoutHook defaultConfig
		 , modMask = mod4Mask
     , manageHook = propertyToQuery (Role "GtkFileChooserDialog") --> doRectFloat (RationalRect (1 % 4) (1 % 4) (1 % 2) (1 % 2))
     , normalBorderColor = "#ddd"
     }
		 where
       mykeys (XConfig {modMask = modm}) = fromList $
         [ ((modm , xK_a), spawn "/data/Scripts/acpi.sh") 
         , ((modm , xK_c), spawn "/data/Scripts/color-picker.sh") 
         , ((modm , xK_d), spawn "/data/Scripts/date.sh") 
         , ((modm , xK_F10), spawn "amixer -D pulse set Master 1+ toggle") 
         , ((modm , xK_F11), spawn "amixer -D pulse set Master 1+ 5%-") 
         , ((modm , xK_F12), spawn "amixer -D pulse set Master 1+ 5%+") 
         , ((modm , xK_b), spawn "chromium") 
         ]
