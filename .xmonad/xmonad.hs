import XMonad
import XMonad.Layout.NoBorders (smartBorders)
import Data.Map (fromList)
import Data.Monoid (mappend)

main = xmonad $ defaultConfig
     { focusFollowsMouse = False
     , layoutHook = smartBorders $ layoutHook defaultConfig
		 , modMask = mod4Mask
     }
