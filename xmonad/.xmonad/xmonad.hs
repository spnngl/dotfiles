-- Imports
import XMonad
import XMonad.Util.Run (safeSpawn)
import Graphics.X11.ExtraTypes.XF86
import qualified XMonad.StackSet as W
import qualified Data.Map as M
-- layouts
import XMonad.Layout.Spacing (smartSpacingWithEdge)
import XMonad.Layout.Fullscreen (fullscreenEventHook)
import XMonad.Layout.NoBorders (smartBorders)
import XMonad.Layout.ResizableTile (ResizableTall(..), MirrorResize(..))
-- hooks
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks (avoidStruts, docksEventHook)
import XMonad.Hooks.ManageHelpers (doFullFloat, isFullscreen, doCenterFloat)
import XMonad.Hooks.EwmhDesktops (ewmh)
-- xmonad-contrib
import XMonad.Actions.CycleWS (swapNextScreen, nextWS, prevWS)

-- Main process
main :: IO()
main = xmonad =<< statusBar myBar myPP toggleStrutsKey (ewmh $ myConfig)

-- Configs
myConfig = defaultConfig { modMask = mod4Mask,
                           terminal = "/usr/bin/urxvtc",
                           workspaces = myWorkspaces,
                           layoutHook = myLayoutHook,
                           manageHook = myManageHook,
                           handleEventHook = myEventHook,
                           borderWidth = 3,
                           normalBorderColor = "#aaaaaa",
                           focusedBorderColor = "#bf616a",
                           focusFollowsMouse = False,
                           keys = myKeys
                         }

-- Workspaces
myWorkspaces :: [String]
myWorkspaces = map show [0..5]

-- Layouts
myLayoutHook = smartSpacingWithEdge 4
             $ avoidStruts
             $ smartBorders
             $ ResizableTall 1 (5/100) (1/2) []

-- Manage
myManageHook = composeAll [ isFullscreen            --> doFullFloat
                          , className =? "Firefox"  --> doShift (myWorkspaces !! 2)
                          , className =? "mpv"      --> doCenterFloat
                          , className =? "ffplay"   --> doCenterFloat
                          , className =? "spotify"  --> doCenterFloat
                          ]

-- Event Hooks
myEventHook = docksEventHook <+> fullscreenEventHook

-- Xmobar
myBar = "xmobar"
myPP = xmobarPP { ppCurrent = xmobarColor "#bf616a" ""
                , ppHidden = xmobarColor "#c0c5ce" ""
                , ppHiddenNoWindows = xmobarColor "#4f5b66" ""
                , ppUrgent = xmobarColor "#a3be8c" ""
                , ppLayout = xmobarColor "#4f5b66" ""
                , ppTitle =  xmobarStrip
                , ppSep = xmobarColor "#4f5b66" "" "  "
                , ppOrder = \(ws:_:_:_) -> [showNbOfWs ws]
                }
                where
                    showNbOfWs = unwords. (take $ length myWorkspaces). words

toggleStrutsKey :: XConfig Layout -> (KeyMask, KeySym)
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

-- Keyboard shortcuts
myKeys :: XConfig Layout -> M.Map (KeyMask, KeySym) (X ())
myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
    -- launching apps
    [ ((modMask, xK_Return), safeSpawn (XMonad.terminal conf) [])
    , ((modMask,                 xK_d   ), safeSpawn "dmenu_run" ["-i"])
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
    , ((modMask .|. shiftMask, xK_j     ), windows W.swapDown)
    , ((modMask .|. shiftMask, xK_k     ), windows W.swapUp)
    , ((modMask,               xK_l     ), swapNextScreen)
    , ((modMask,               xK_c     ), prevWS)
    , ((modMask,               xK_r     ), nextWS)
    -- increase or decrease number of windows in the master area
    , ((modMask              , xK_comma ), sendMessage (IncMasterN 1))
    , ((modMask              , xK_period), sendMessage (IncMasterN (-1)))
    -- resizing
    , ((modMask .|. shiftMask, xK_c ), sendMessage Shrink)
    , ((modMask .|. shiftMask, xK_r ), sendMessage Expand)
    , ((modMask .|. shiftMask, xK_t ), sendMessage MirrorShrink)
    , ((modMask .|. shiftMask, xK_s ), sendMessage MirrorExpand)
    -- restart
    , ((modMask              , xK_q     ), spawn "xmonad --recompile && xmonad --restart")
    , ((modMask .|. shiftMask, xK_q     ), spawn "xrdb -Ietc/x/xresources/ ~/.Xresources && xmonad --restart")
    , ((modMask .|. shiftMask, xK_l     ), spawn "slock")
    , ((modMask              , xK_y     ), spawn "mpv $(xclip -o -selection clipboard) 1>/dev/null 2>&1")
    , ((modMask              , xK_p     ), spawn "~/./tmp/popcorn/Popcorn-Time &")
    ]
    ++
    [((m .|. modMask, k), windows $ f i)
        | (i, k) <- zip (workspaces conf)[ -- [ xK_quotedbl
                                         -- , xK_guillemotleft
                                         -- , xK_guillemotright
                                         -- , xK_parenleft
                                         -- , xK_parenright
                                         -- , xK_at
                                         xK_plus
                                         , xK_minus
                                         , xK_slash
                                         , xK_asterisk
                                         , xK_equal
                                         , xK_percent
                                         ] ,
          (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
    ++
    -- mod-{w,z,m}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,z,m}, Move client to screen 1, 2, or 3
    [((m .|. modMask, key), screenWorkspace sc >>= flip whenJust (windows . f))
          | (key, sc) <- zip [xK_w, xK_z, xK_m] [0..]
          , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]
