import Data.Ratio ((%))
import XMonad
import XMonad.Hooks.ManageHelpers (doRectFloat)
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Util.WindowProperties (Property (..), propertyToQuery)
import qualified XMonad.StackSet as W

main :: IO ()
main = xmonad $ defaultConfig
     { focusFollowsMouse = False
     , layoutHook = smartBorders $ layoutHook defaultConfig
		 , modMask = mod4Mask
     , manageHook = propertyToQuery (Role "GtkFileChooserDialog") --> doRectFloat (W.RationalRect (1 % 4) (1 % 4) (1 % 2) (1 % 2))
     }
