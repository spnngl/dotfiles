-- Imports
import XMonad
import System.Exit
import XMonad.Util.Run (safeSpawn)
import Graphics.X11.ExtraTypes.XF86
import qualified XMonad.StackSet as W
import qualified Data.Map as M
import Data.List
-- layouts
import XMonad.Layout.Spacing
import XMonad.Layout.Grid
--import XMonad.Layout.Fullscreen
import XMonad.Layout.NoBorders
import XMonad.Layout.MultiToggle
-- hooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops
-- var
import System.Exit

import XMonad.Config.Bepo (bepoConfig)

-- Main process
main :: IO()
main = xmonad =<< statusBar myBar myPP toggleStrutsKey (ewmh $ myConfig)

-- Configs
myConfig = bepoConfig { modMask = mod4Mask,
                        terminal = "urxvtc",
                        --workspaces = myWorkspaces,
                        --layoutHook = myLayoutHook,
                        --manageHook = myManageHook,
                        handleEventHook = myEventHook,
                        borderWidth = 2,
                        normalBorderColor = "#2b303b",
                        focusedBorderColor = "#bf616a",
                        focusFollowsMouse = False,
                        keys = myKeys
                      }

-- Layouts
-- No spacing
{-myLayoutHook = avoidStruts $ smartBorders (tall ||| GridRatio (4/3) ||| Full )-}
                   {-where tall = Tall 1 (3/100) (1/2) -}

-- with spacing
--myLayoutHook = (spacing 5 $ avoidStruts (tall ||| GridRatio (4/3) ||| Full )) ||| smartBorders Full
--                   where tall = Tall 1 (3/100) (1/2)

-- fullscreen layout (not needed with ewmh)
--myFullscreen = (fullscreenFloat . fullscreenFull) (smartBorders Full)

-- Event Hooks
myEventHook = docksEventHook <+> fullscreenEventHook

-- Xmobar
myBar = "xmobar"
myPP = xmobarPP { ppCurrent = xmobarColor "#bf616a" ""
                , ppHidden = xmobarColor "#c0c5ce" ""
                , ppHiddenNoWindows = xmobarColor "#4f5b66" ""
                , ppUrgent = xmobarColor "#a3be8c" ""
                , ppLayout = xmobarColor "#4f5b66" ""
                , ppTitle =  xmobarColor "#c0c5ce" "" . shorten 80
                , ppSep = xmobarColor "#4f5b66" "" "  "
                }

toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- Keyboard shortcuts
myKeys :: XConfig Layout -> M.Map (KeyMask, KeySym) (X ())
myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
    -- launching apps
    [ ((modMask, xK_Return), safeSpawn (XMonad.terminal conf) [])
    , ((modMask,                 xK_d     ), safeSpawn "dmenu_run" ["-b", "-i"])
    --, ((modMask .|. controlMask, xK_c     ), safeSpawn "firefox" [])

    -- Kill windows
    , ((modMask, xK_x     ), kill)

    -- layouts
    , ((modMask,               xK_space ), sendMessage NextLayout)
    , ((modMask .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)

    -- floating layer stuff
    , ((modMask,               xK_f     ), withFocused $ windows . W.sink)

    -- refresh
    , ((modMask,               xK_n     ), refresh)

    -- focus
    , ((modMask,               xK_t     ), windows W.focusDown)
    , ((modMask,               xK_s     ), windows W.focusUp)

    -- swapping
    , ((modMask .|. shiftMask, xK_j     ), windows W.swapDown  )
    , ((modMask .|. shiftMask, xK_k     ), windows W.swapUp    )

    -- increase or decrease number of windows in the master area
    , ((modMask              , xK_comma ), sendMessage (IncMasterN 1))
    , ((modMask              , xK_period), sendMessage (IncMasterN (-1)))

    -- resizing
    , ((modMask .|. shiftMask, xK_c ), sendMessage Shrink)
    , ((modMask .|. shiftMask, xK_r ), sendMessage Expand)
    -- quit, or restart
    --, ((modMask .|. shiftMask, xK_Escape  ), io (exitWith ExitSuccess))
    , ((modMask              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    ]
    ++
    [((m .|. modMask, k), windows $ f i)
        | (i, k) <- zip (workspaces conf)[ xK_c --quotedbl
                                         , xK_r --apostrophe
                                         , xK_ampersand
                                         , xK_parenleft
                                         , xK_parenright
                                         , xK_section -- 6 0xa7
                                         , xK_egrave
                                         , xK_exclam  -- 8 0x21
                                         , xK_ccedilla
                                         , xK_agrave
                                         , xK_eacute
                                         ] ,
          (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
