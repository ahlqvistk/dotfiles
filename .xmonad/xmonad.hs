import Data.Ratio ((%))
import XMonad
import XMonad.Hooks.ManageHelpers (doRectFloat)
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Util.WindowProperties (Property (..), propertyToQuery)
import qualified XMonad.StackSet as W
import qualified Data.Map as M

main :: IO ()
main = xmonad $ defaultConfig
     { focusFollowsMouse = False
     , keys = \c -> mykeys c `M.union` keys defaultConfig c
     , layoutHook = smartBorders $ layoutHook defaultConfig
		 , modMask = mod4Mask
     , manageHook = propertyToQuery (Role "GtkFileChooserDialog") --> doRectFloat (W.RationalRect (1 % 4) (1 % 4) (1 % 2) (1 % 2))
     }
		 where
       mykeys (XConfig {modMask = modm}) = M.fromList $
         [ ((modm , xK_a), spawn "/data/Scripts/acpi.sh") 
         , ((modm , xK_c), spawn "/data/Scripts/color-picker.sh") 
         , ((modm , xK_d), spawn "/data/Scripts/date.sh") 
         ]
