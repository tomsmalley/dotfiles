import XMonad
import XMonad.Actions.Navigation2D
import XMonad.Actions.CycleWS
import XMonad.Actions.Submap
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.FadeInactive
import XMonad.Layout.BinarySpacePartition
import XMonad.Layout.EqualSpacing
import qualified XMonad.StackSet as W

import qualified Data.Map as M
import System.Exit

myWorkspaces :: [WorkspaceId]
myWorkspaces = map show [1 .. 9 :: Int]

keybinds conf@(XConfig {modMask = modm}) = M.fromList $
    [ ((modm .|. shiftMask, xK_q), io (exitWith ExitSuccess)) -- logout
    , ((modm, xK_q), spawn "xmonad --recompile; xmonad --restart"
                  >> setLayout (layoutHook conf)) -- restart xmonad, reset layout
    -- launching and killing programs
    , ((modm, xK_n), spawn $ terminal conf) -- launch terminal
    , ((modm, xK_space), spawn "dmenu_run") -- launch dmenu
    , ((modm, xK_w), kill) -- close focused window
    -- natural movement in workspace
    , ((modm, xK_l), windowGo R False)
    , ((modm, xK_h), windowGo L False)
    , ((modm, xK_k), windowGo U False)
    , ((modm, xK_j), windowGo D False)
    -- movement between workspaces
    , ((modm .|. controlMask, xK_l), nextWS)
    , ((modm .|. controlMask, xK_h), prevWS)
    -- movement between screens
    , ((modm .|. shiftMask, xK_l), screenGo R False)
    , ((modm .|. shiftMask, xK_h), screenGo L False)
    -- tree control
    , ((modm, xK_r), sendMessage Rotate) -- rotate tree
    , ((modm, xK_s), sendMessage Swap) -- swap tree nodes
    -- move window with movement direction
    , ((modm, xK_m), submap . M.fromList $
        -- swap windows in workspace
        [ ((modm, xK_l), windowSwap R False)
        , ((modm, xK_h), windowSwap L False)
        , ((modm, xK_k), windowSwap U False)
        , ((modm, xK_j), windowSwap D False)
        -- move window between workspaces
        , ((modm .|. controlMask, xK_l), shiftToNext >> nextWS)
        , ((modm .|. controlMask, xK_h), shiftToPrev >> prevWS)
        -- move window between screens
        , ((modm .|. shiftMask, xK_l), windowToScreen R False)
        , ((modm .|. shiftMask, xK_h), windowToScreen D False)
        ])
    , ((modm, xK_p), withFocused $ windows . W.sink) -- push back into tiling
    -- resize window
    , ((modm, xK_t), submap . M.fromList $
        [ ((modm, xK_l), sendMessage $ ExpandTowards R)
        , ((modm, xK_h), sendMessage $ ShrinkFrom R)
        , ((modm, xK_j), sendMessage $ ExpandTowards D)
        , ((modm, xK_k), sendMessage $ ShrinkFrom D)
        ])
    , ((modm, xK_bracketright), sendMessage $ ExpandTowards R)
    , ((modm, xK_bracketleft), sendMessage $ ShrinkFrom R)
    , ((modm, xK_b), sendMessage Equalize)
    ]
    ++ -- go straight to a workspace
    [((modm, k), windows $ W.greedyView i)
        | (i, k) <- zip (workspaces conf) [xK_1 .. xK_9]]

layout = equalSpacing 12 0 0 0 emptyBSP

myLogHook :: X ()
myLogHook = fadeInactiveLogHook 0.9 -- relies on xcompmgr, fade windows

main = xmonad $ withNavigation2DConfig def { defaultTiledNavigation = centerNavigation }
              $ def
    { terminal = "urxvt"
    , borderWidth = 0
    --, modMask = mod4Mask -- super key
    , keys = keybinds
    , layoutHook = layout
    , logHook = myLogHook
    , workspaces = myWorkspaces
    }
