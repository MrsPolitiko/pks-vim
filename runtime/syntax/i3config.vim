" Vim syntax file
" Language: i3 config file
" Original Author: Mohamed Boughaba <mohamed dot bgb at gmail dot com>
" Maintainer: Josef Litoš (github JosefLitos)
" Version: 4.20
" Last Change: 2022 June 20

" References:
" http://i3wm.org/docs/userguide.html#configuring
" http://vimdoc.sourceforge.net/htmldoc/syntax.html
"
"
" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

scriptencoding utf-8

" Error
syn match i3ConfigError /.*/

" Todo
syn keyword i3ConfigTodo TODO FIXME XXX contained

" Comment
" Comments are started with a # and can only be used at the beginning of a line
syn match i3ConfigComment /^\s*#.*$/ contains=i3ConfigTodo

syn match i3ConfigOperator /[,;]/ contained

" Font
" A FreeType font description is composed by:
" a font family, a style, a weight, a variant, a stretch and a size.
syn match i3ConfigFontSeparator /[,:]/ contained
syn match i3ConfigParen /[{}]/ contained
syn keyword i3ConfigFontKeyword font contained
syn match i3ConfigFontNamespace /\w\+:/ contained contains=i3ConfigFontSeparator
syn match i3ConfigFontContent /-\?\w\+\(-\+\|\s\+\|,\)/ contained contains=i3ConfigFontNamespace,i3ConfigFontKeyword,i3ConfigFontSeparator
syn match i3ConfigFontSize /\s\=\d\+\(px\)\?\s\?$/ contained
syn match i3ConfigFont /^\s*font\s\+.*$/ contains=i3ConfigFontContent,i3ConfigFontSize,i3ConfigFontNamespace
syn match i3ConfigFont /^\s*font\s\+.*\(\\\_.*\)\?$/ contains=i3ConfigFontContent,i3ConfigFontSize,i3ConfigFontNamespace
syn match i3ConfigFont /^\s*font\s\+.*\(\\\_.*\)\?[^\\]\+$/ contains=i3ConfigFontContent,i3ConfigFontSize,i3ConfigFontNamespace
syn match i3ConfigFont /^\s*font\s\+\(\(.*\\\_.*\)\|\(.*[^\\]\+$\)\)/ contains=i3ConfigFontContent,i3ConfigFontSize,i3ConfigFontNamespace

" variables
syn match i3ConfigString /\(['"]\)\(.\{-}\)\1/ contained
syn match i3ConfigColor /#\w\{3,8}/ contained
syn match i3ConfigVariableModifier /+/ contained
syn match i3ConfigVariable /\$[A-Z0-9a-z-_]\+/ contained
syn keyword i3ConfigSetKeyword set contained
syn match i3ConfigSet /^\s*set\s\+.*$/ contains=i3ConfigVariable,i3ConfigSetKeyword,i3ConfigColor,i3ConfigString,i3ConfigNoStartupId,i3ConfigNumber

" Gaps
syn keyword i3ConfigGapStyleKeyword inner outer horizontal vertical top right bottom left current all set plus minus toggle up down contained
syn match i3ConfigGapStyle /^\s*\(gaps\)\s\+\(inner\|outer\|horizontal\|vertical\|left\|top\|right\|bottom\)\(\s\+\(current\|all\)\)\?\(\s\+\(set\|plus\|minus\|toggle\)\)\?\(\s\+\(-\?\d\+\|\$.*\)\)$/ contains=i3ConfigGapStyleKeyword,i3ConfigNumber,i3ConfigVariable
syn keyword i3ConfigSmartGapKeyword on inverse_outer contained
syn match i3ConfigSmartGap /^\s*smart_gaps\s\+\(on\|inverse_outer\)\s\?$/ contains=i3ConfigSmartGapKeyword
syn keyword i3ConfigSmartBorderKeyword on no_gaps contained
syn match i3ConfigSmartBorder /^\s*smart_borders\s\+\(on\|no_gaps\)\s\?$/ contains=i3ConfigSmartBorderKeyword

" Keyboard bindings
syn keyword i3ConfigAction move exec exit restart reload layout append_layout workspace focus kill open fullscreen sticky split floating mark unmark resize rename scratchpad swap mode bar gaps border contained
syn keyword i3ConfigOption enable disable toggle mode_toggle key shrink grow height width restore container to left right up down position absolute relative output window splitv splith tabbed stacked default on off inner outer current all set plus minus top bottom horizontal vertical auto none normal pixel prev next back_and_forth child parent contained
syn match i3ConfigNumber /\s\(-\|+\)\?\d\+/ contained
syn match i3ConfigUnit /\sp\(pt\|x\)/ contained
syn match i3ConfigUnitOr /\sor/ contained
syn keyword i3ConfigBindKeyword bindsym bindcode contained
syn match i3ConfigBindArgument /\(--no-startup-id\|--release\|--border\|--whole-window\|--exclude-titlebar\)/ contained
syn match i3ConfigBindKey /^\s*\(bindsym\|bindcode\)\s\+\(--release\s\+\)\?[^ ]\+/ contained contains=i3ConfigBindKeyword,i3ConfigBindArgument,i3ConfigVariable,i3ConfigVariableModifier,i3ConfigBindArgument
syn match i3ConfigBind /^\s*\(bindsym\|bindcode\)\s\+.*$/ contains=i3ConfigNumber,i3ConfigBindKey,i3ConfigVariable,i3ConfigModifier,i3ConfigBindArgument,i3ConfigAction,i3ConfigOption,i3ConfigOperator,i3ConfigString,i3ConfigUnit,i3ConfigUnitOr,i3ConfigConditional

" Floating
syn keyword swayConfigFloatingModifier floating_modifier contained
syn match swayConfigFloatingMouseAction /^\s\?.*floating_modifier\s.*\(normal\|inverted\)$/ contains=swayConfigFloatingModifier,i3ConfigVariable,i3ConfigSize

syn keyword i3ConfigSizeSpecial x contained
syn match i3ConfigSize / -\?\d\+\s\?x\s\?-\?\d\+/ contained contains=i3ConfigSizeSpecial,i3ConfigNumber
syn match i3ConfigFloating /^\s*floating_modifier\s\+\$\w\+\d\?/ contains=i3ConfigVariable,i3ConfigSize,swayConfigFloatingMouseAction
syn match i3ConfigFloating /^\s*floating_\(maximum\|minimum\)_size\s\+-\?\d\+\s\?x\s\?-\?\d\+/ contains=i3ConfigSize

" Orientation
syn keyword i3ConfigOrientationKeyword vertical horizontal auto contained
syn match i3ConfigOrientation /^\s*default_orientation\s\+\(vertical\|horizontal\|auto\)\s\?$/ contains=i3ConfigOrientationKeyword

" Layout
syn keyword i3ConfigLayoutKeyword default stacking tabbed contained
syn match i3ConfigLayout /^\s*workspace_layout\s\+\(default\|stacking\|tabbed\)\s\?$/ contains=i3ConfigLayoutKeyword

" Border style
syn keyword i3ConfigBorderStyleKeyword none normal pixel contained
syn match i3ConfigBorderStyle /^\s*\(new_window\|new_float\|default_border\|default_floating_border\)\s\+\(none\|\(normal\|pixel\)\(\s\+\d\+\)\?\(\s\+\$\w\+\(\(-\w\+\)\+\)\?\(\s\|+\)\?\)\?\)\s\?$/ contains=i3ConfigBorderStyleKeyword,i3ConfigNumber,i3ConfigVariable

" Hide borders and edges
syn keyword i3ConfigEdgeKeyword none vertical horizontal both smart smart_no_gaps contained
syn match i3ConfigEdge /^\s*hide_edge_borders\s\+\(none\|vertical\|horizontal\|both\|smart\|smart_no_gaps\)\s\?$/ contains=i3ConfigEdgeKeyword


" Arbitrary commands for specific windows (for_window)
syn keyword i3ConfigCommandKeyword for_window contained
syn match i3ConfigConditionalText /\w\+\(-\w\+\)*/ contained
syn match i3ConfigEqualsOperator /=/ contained
syn region i3ConfigConditional start="\[" end="\]" contained contains=i3ConfigString,i3ConfigEqualsOperator,i3ConfigConditionalText
syn match i3ConfigArbitraryCommand /^\s*for_window\s\+.*$/ contains=i3ConfigConditional,i3ConfigCommandKeyword,i3ConfigAction,i3ConfigOption,i3ConfigSize,i3ConfigNumber,i3ConfigString,i3ConfigOperator

" Disable focus open opening
syn keyword i3ConfigNoFocusKeyword no_focus contained
syn match i3ConfigDisableFocus /^\s*no_focus\s\+.*$/ contains=i3ConfigConditional,i3ConfigNoFocusKeyword

" Move client to specific workspace automatically
syn keyword i3ConfigAssignKeyword assign contained
syn match i3ConfigAssignSpecial /→/ contained
syn match i3ConfigAssign /^\s*assign\s\+.*$/ contains=i3ConfigAssignKeyword,i3ConfigAssignSpecial,i3ConfigConditional,i3ConfigVariable,i3ConfigString,i3ConfigNumber

" X resources
syn keyword i3ConfigResourceKeyword set_from_resource contained
syn match i3ConfigResource /^\s*set_from_resource\s\+.*$/ contains=i3ConfigResourceKeyword,i3ConfigConditional,i3ConfigColor,i3ConfigVariable,i3ConfigString,i3ConfigNumber

" Auto start applications
syn keyword i3ConfigExecKeyword exec contained
syn keyword i3ConfigExecAlwaysKeyword exec_always contained
syn match i3ConfigNoStartupId /--no-startup-id/ contained " We are not using i3ConfigBindArgument as only no-startup-id is supported here
syn match i3ConfigExec /^\s*exec\(_always\)\?\s\+.*$/ contains=i3ConfigExecKeyword,i3ConfigExecAlwaysKeyword,i3ConfigNoStartupId,i3ConfigString,i3ConfigNumber,i3ConfigVariable

" Automatically putting workspaces on specific screens
syn keyword i3ConfigWorkspaceKeyword workspace contained
syn keyword i3ConfigOutput output contained
syn match i3ConfigWorkspace /^\s*workspace\s\+.*$/ contains=i3ConfigWorkspaceKeyword,i3ConfigNumber,i3ConfigString,i3ConfigOutput,i3ConfigVariable

syn keyword i3ConfigBoolean yes no contained

" set display outputs
syn keyword swayConfigOutput output contained
syn match swayConfigOutputCommand /^\s*output\s\+.*$/ contains=swayConfigOutput,i3ConfigNumber

" set display focus
syn keyword swayConfigFocusKeyword focus contained
syn match swayConfigFocus /^\s*focus\soutput\s.*$/ contains=swayConfigFocusKeyword,i3ConfigOutput

" Changing colors
syn keyword i3ConfigClientColorKeyword client focused focused_inactive unfocused urgent placeholder background contained
syn match i3ConfigClientColor /^\s*client.\w\+\s\+.*$/ contains=i3ConfigClientColorKeyword,i3ConfigColor,i3ConfigVariable

syn keyword i3ConfigTitleAlignKeyword left center right contained
syn match i3ConfigTitleAlign /^\s*title_align\s\+.*$/ contains=i3ConfigTitleAlignKeyword

" Interprocess communication
syn match i3ConfigInterprocessKeyword /ipc-socket/ contained
syn match i3ConfigInterprocess /^\s*ipc-socket\s\+.*$/ contains=i3ConfigInterprocessKeyword

" Mouse warping
syn keyword i3ConfigMouseWarpingKeyword mouse_warping contained
syn keyword i3ConfigMouseWarpingType output none contained
syn match i3ConfigMouseWarping /^\s*mouse_warping\s\+\(output\|none\)\s\?$/ contains=i3ConfigMouseWarpingKeyword,i3ConfigMouseWarpingType

" Focus follows mouse
syn keyword i3ConfigFocusFollowsMouseKeyword focus_follows_mouse contained
syn match i3ConfigFocusFollowsMouse /^\s*focus_follows_mouse\s\+\(yes\|no\)\s\?$/ contains=i3ConfigFocusFollowsMouseKeyword,i3ConfigBoolean

" Popups during fullscreen mode
syn keyword i3ConfigPopupOnFullscreenKeyword popup_during_fullscreen contained
syn keyword i3ConfigPopupOnFullscreenType smart ignore leave_fullscreen contained
syn match i3ConfigPopupOnFullscreen /^\s*popup_during_fullscreen\s\+\w\+\s\?$/ contains=i3ConfigPopupOnFullscreenKeyword,i3ConfigPopupOnFullscreenType

" Focus wrapping
syn keyword i3ConfigFocusWrappingKeyword force_focus_wrapping focus_wrapping contained
syn match i3ConfigFocusWrapping /^\s*\(force_\)\?focus_wrapping\s\+\(yes\|no\)\s\?$/ contains=i3ConfigBoolean,i3ConfigFocusWrappingKeyword

" Forcing Xinerama
syn keyword i3ConfigForceXineramaKeyword force_xinerama contained
syn match i3ConfigForceXinerama /^\s*force_xinerama\s\+\(yes\|no\)\s\?$/ contains=i3ConfigBoolean,i3ConfigForceXineramaKeyword

" Automatic back-and-forth when switching to the current workspace
syn keyword i3ConfigAutomaticSwitchKeyword workspace_auto_back_and_forth contained
syn match i3ConfigAutomaticSwitch /^\s*workspace_auto_back_and_forth\s\+\(yes\|no\)\s\?$/ contains=i3ConfigBoolean,i3ConfigAutomaticSwitchKeyword

" Delay urgency hint
syn keyword i3ConfigTimeUnit ms contained
syn keyword i3ConfigDelayUrgencyKeyword force_display_urgency_hint contained
syn match i3ConfigDelayUrgency /^\s*force_display_urgency_hint\s\+\d\+\s\+ms\s\?$/ contains=i3ConfigBoolean,i3ConfigDelayUrgencyKeyword,i3ConfigNumber,i3ConfigTimeUnit

" Focus on window activation
syn keyword i3ConfigFocusOnActivationKeyword focus_on_window_activation contained
syn keyword i3ConfigFocusOnActivationType smart urgent focus none contained
syn match i3ConfigFocusOnActivation /^\s*focus_on_window_activation\s\+\(smart\|urgent\|focus\|none\)\s\?$/  contains=i3ConfigFocusOnActivationKeyword,i3ConfigFocusOnActivationType

" Show window marks in their window title
syn keyword i3ConfigShowMarksKeyword show_marks contained
syn match i3ConfigShowMarks /^\s*show_marks\s\+\(yes\|no\)\s\?$/ contains=i3ConfigBoolean,i3ConfigShowMarksKeyword

" Group mode/bar
syn keyword i3ConfigBlockKeyword mode bar height colors i3bar_command status_command position exec mode hidden_state modifier id position output background statusline tray_output tray_padding separator separator_symbol workspace_buttons strip_workspace_numbers binding_mode_indicator focused_workspace active_workspace inactive_workspace urgent_workspace binding_mode contained
syn region i3ConfigBlock start=+.*s\?{$+ end=+^}$+ contains=i3ConfigBlockKeyword,i3ConfigString,i3ConfigBind,i3ConfigComment,i3ConfigFont,i3ConfigBoolean,i3ConfigNumber,i3ConfigOperator,i3ConfigModifier,i3ConfigParen,i3ConfigColor,i3ConfigVariable,i3ConfigVariableModifier transparent keepend extend

" Line continuation
syn region i3ConfigLineCont start=/^.*\\$/ end=/^[^\\]*$/ contains=i3ConfigBlockKeyword,i3ConfigString,i3ConfigBind,i3ConfigComment,i3ConfigFont,i3ConfigBoolean,i3ConfigColor,i3ConfigVariable transparent keepend extend

" Includes with relative paths to config files
syn keyword swayConfigInclude include contained
syn match swayConfigFile /^include\s\(\~\?\/.*$\|\.\{0,2}\/.*$\)/ contains=swayConfigInclude

" Define the highlighting.
hi def link i3ConfigCommand                         Function
hi def link i3ConfigError                           Error
hi def link i3ConfigTodo                            Todo
hi def link i3ConfigComment                         Comment
hi def link i3ConfigOperator                        Operator
hi def link i3ConfigParen                           Delimiter
hi def link i3ConfigFontSeparator                   i3ConfigOperator
hi def link i3ConfigFontKeyword                     Keyword
hi def link i3ConfigFontNamespace                   Type
hi def link i3ConfigFontContent                     Normal
hi def link i3ConfigFontSize                        Number
hi def link i3ConfigString                          String
hi def link i3ConfigNumber                          Number
hi def link i3ConfigBoolean                         Boolean
hi def link i3ConfigColor                           Constant
hi def link i3ConfigVariableModifier                i3ConfigOperator
hi def link i3ConfigVariable                        Variable
hi def link i3ConfigSetKeyword                      Keyword
hi def link i3ConfigGapStyleKeyword                 Type
hi def link i3ConfigGapStyle                        i3ConfigCommand
hi def link i3ConfigSmartGapKeyword                 Normal
hi def link i3ConfigSmartGap                        Keyword
hi def link i3ConfigSmartBorderKeyword              Normal
hi def link i3ConfigSmartBorder                     Keyword
hi def link i3ConfigAction                          i3ConfigCommand
hi def link i3ConfigOption                          Type
hi def link i3ConfigUnit                            Number
hi def link i3ConfigUnitOr                          i3ConfigOperator
hi def link i3ConfigBindKey                         Constant
hi def link i3ConfigBindKeyword                     Keyword
hi def link i3ConfigBindArgument                    Parameter
hi def link i3ConfigSizeSpecial                     i3ConfigOperator
hi def link i3ConfigFloating                        Keyword
hi def link i3ConfigOrientationKeyword              Normal
hi def link i3ConfigOrientation                     Keyword
hi def link i3ConfigLayoutKeyword                   Normal
hi def link i3ConfigLayout                          Keyword
hi def link i3ConfigBorderStyleKeyword              Normal
hi def link i3ConfigBorderStyle                     Keyword
hi def link i3ConfigEdgeKeyword                     Normal
hi def link i3ConfigEdge                            Keyword
hi def link i3ConfigCommandKeyword                  Keyword
hi def link i3ConfigEqualsOperator                  i3ConfigOperator
hi def link i3ConfigConditionalText                 Normal
hi def link i3ConfigConditional                     Delimiter
hi def link i3ConfigNoFocusKeyword                  Keyword
hi def link i3ConfigAssignKeyword                   Keyword
hi def link i3ConfigAssignSpecial                   Type
hi def link i3ConfigResourceKeyword                 Keyword
hi def link i3ConfigExecKeyword                     i3ConfigCommand
hi def link i3ConfigExecAlwaysKeyword               Keyword
hi def link i3ConfigNoStartupId                     i3ConfigBindArgument
hi def link i3ConfigWorkspaceKeyword                i3ConfigCommand
hi def link i3ConfigOutput                          Type
hi def link i3ConfigClientColorKeyword              Keyword
hi def link i3ConfigClientColor                     Operator
hi def link i3ConfigTitleAlignKeyword               Normal
hi def link i3ConfigTitleAlign                      Keyword
hi def link i3ConfigInterprocessKeyword             Keyword
hi def link i3ConfigMouseWarpingKeyword             Keyword
hi def link i3ConfigMouseWarpingType                Normal
hi def link i3ConfigFocusFollowsMouseKeyword        Keyword
hi def link i3ConfigPopupOnFullscreenKeyword        Keyword
hi def link i3ConfigPopupOnFullscreenType           Normal
hi def link i3ConfigFocusWrappingKeyword            Keyword
hi def link i3ConfigForceXineramaKeyword            Keyword
hi def link i3ConfigAutomaticSwitchKeyword          Keyword
hi def link i3ConfigTimeUnit                        Number
hi def link i3ConfigDelayUrgencyKeyword             Keyword
hi def link i3ConfigFocusOnActivationKeyword        Keyword
hi def link i3ConfigFocusOnActivationType           Normal
hi def link i3ConfigShowMarksKeyword                Keyword
hi def link i3ConfigBlockKeyword                    Keyword
hi def link swayConfigInclude                         i3ConfigCommand
hi def link swayConfigFile                            Constant
hi def link swayConfigFloatingModifier                Identifier
hi def link swayConfigFloatingMouseAction             Type
hi def link swayConfigFocusKeyword                    i3ConfigCommand
hi def link swayConfigOutput                          i3ConfigCommand
hi def link swayConfigOutputCommand                   Identifier

let b:current_syntax = "i3config"
