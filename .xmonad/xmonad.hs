import XMonad
import XMonad.Layout.NoBorders (smartBorders)

main = xmonad $ defaultConfig
     { focusFollowsMouse = False
     , layoutHook = smartBorders $ layoutHook defaultConfig
		 , modMask = mod4Mask
     }
