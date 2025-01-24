#!/usr/bin/env bash


#set -e




##
## ## Link
##
## * https://github.com/samwhelp/note-about-ubuntu-mate/blob/gh-pages/_demo/scripts/mate-keybind/mate-keybind.sh
## * https://raw.githubusercontent.com/samwhelp/note-about-ubuntu-mate/refs/heads/gh-pages/_demo/scripts/mate-keybind/mate-keybind.sh
##




##
## ## Mate / Config / Mouse Button Modifier
##

mod_mate_config_for_mouse_button_modifier () {


	##
	## ## Disable Super_L Open Menu
	##

	gsettings set com.solus-project.brisk-menu hot-key ''

	#gsettings set com.linuxmint.mintmenu hot-key ''


	##
	## ## Mouse Button Modifier
	##

	gsettings set org.mate.Marco.general mouse-button-modifier "'<Super>'"

	gsettings set org.mate.Marco.general resize-with-right-button true


	return 0
}




##
## ## Mate / Config / Keybind
##

mod_mate_config_for_keybind_main () {


	##
	## ## Fix
	##




	##
	## ## Launcher
	##

	gsettings set org.mate.Marco.global-keybindings panel-main-menu "'<Alt>F1'"

	gsettings set org.mate.Marco.global-keybindings panel-run-dialog "'<Alt>F2'"


	##
	## ## Window
	##

	gsettings set org.mate.Marco.window-keybindings close "'<Super>q'"

	gsettings set org.mate.Marco.window-keybindings toggle-maximized "'<Super>w'"

	gsettings set org.mate.Marco.window-keybindings toggle-fullscreen "'<Super>f'"

	gsettings set org.mate.Marco.global-keybindings show-desktop "'<Super>d'"

	gsettings set org.mate.Marco.window-keybindings begin-move "'<Super>e'"

	gsettings set org.mate.Marco.window-keybindings begin-resize "'<Super>r'"


	##
	## ## Window / Switch
	##

	gsettings set org.mate.Marco.global-keybindings switch-windows-backward "'<Super>a'"

	gsettings set org.mate.Marco.global-keybindings switch-windows "'<Super>s'"


	##
	## ## Workspace / Switch
	##

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left  "'<Alt>a'"

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right  "'<Alt>s'"

	gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev  "'<Alt>z'"


	##
	## ## Window / Tiling Move
	##

	gsettings set org.mate.Marco.window-keybindings tile-to-corner-ne "'<Super><Shift>Down'"

	gsettings set org.mate.Marco.window-keybindings tile-to-corner-nw "'<Super><Shift>Up'"

	gsettings set org.mate.Marco.window-keybindings tile-to-corner-se "'<Super><Shift>Right'"

	gsettings set org.mate.Marco.window-keybindings tile-to-corner-sw "'<Super><Shift>Left'"

	gsettings set org.mate.Marco.window-keybindings tile-to-side-e "'<Super>Right'"

	gsettings set org.mate.Marco.window-keybindings tile-to-side-w "'<Super>Left'"


	##
	## ## Screenshot
	##

	gsettings set org.mate.Marco.global-keybindings run-command-screenshot "'Print'"

	gsettings set org.mate.Marco.keybinding-commands command-screenshot "'mate-screenshot'"


	##
	## ## Screenshot / Window
	##

	gsettings set org.mate.Marco.global-keybindings run-command-window-screenshot "'<Super>Print'"

	gsettings set org.mate.Marco.keybinding-commands command-window-screenshot "'mate-screenshot --window'"


	##
	## ## Screenshot / Area
	##

	gsettings set org.mate.Marco.global-keybindings run-command-2 "'<Control>Print'"

	gsettings set org.mate.Marco.keybinding-commands command-2 '/bin/sh -c "sleep 0.1; mate-screenshot --area"'



	return 0
}


mod_mate_config_for_keybind_custom () {


	##
	## ## Clear Old
	##

	dconf reset -f /org/mate/desktop/keybindings/




	##
	## ## Keybind Item
	##


	## ### Logout
	dconf write /org/mate/desktop/keybindings/system-logout/name "'System_Logout'"
	dconf write /org/mate/desktop/keybindings/system-logout/action "'mate-session-save --logout-dialog'"
	dconf write /org/mate/desktop/keybindings/system-logout/binding "'<Shift><Alt>x'"


	## ### Shutdown
	dconf write /org/mate/desktop/keybindings/system-shutdown/name "'System_Shutdown'"
	dconf write /org/mate/desktop/keybindings/system-shutdown/action "'mate-session-save --shutdown-dialog'"
	dconf write /org/mate/desktop/keybindings/system-shutdown/binding "'<Shift><Alt>z'"


	## ### System Settings
	dconf write /org/mate/desktop/keybindings/control-center/name "'Control_Center'"
	dconf write /org/mate/desktop/keybindings/control-center/action "'mate-control-center'"
	dconf write /org/mate/desktop/keybindings/control-center/binding "'<Shift><Alt>s'"


	## ### Terminal
	dconf write /org/mate/desktop/keybindings/terminal/name "'Terminal'"
	dconf write /org/mate/desktop/keybindings/terminal/action "'mate-terminal'"
	dconf write /org/mate/desktop/keybindings/terminal/binding "'<Alt>Return'"

	## ### Terminal-1
	dconf write /org/mate/desktop/keybindings/terminal-1/name "'Terminal-1'"
	dconf write /org/mate/desktop/keybindings/terminal-1/action "'mate-terminal'"
	dconf write /org/mate/desktop/keybindings/terminal-1/binding "'<Shift><Alt>a'"


	## ### File Manager
	dconf write /org/mate/desktop/keybindings/file-manager/name "'File_Manager'"
	dconf write /org/mate/desktop/keybindings/file-manager/action "'caja'"
	dconf write /org/mate/desktop/keybindings/file-manager/binding "'<Shift><Alt>f'"


	## ### File Manager-1
	dconf write /org/mate/desktop/keybindings/file-manager-1/name "'File_Manager-1'"
	dconf write /org/mate/desktop/keybindings/file-manager-1/action "'pcmanfm-qt'"
	dconf write /org/mate/desktop/keybindings/file-manager-1/binding "'<Shift><Alt>g'"


	## ### Text Editor
	dconf write /org/mate/desktop/keybindings/text-editor/name "'Text_Editor'"
	dconf write /org/mate/desktop/keybindings/text-editor/action "'pluma'"
	dconf write /org/mate/desktop/keybindings/text-editor/binding "'<Shift><Alt>e'"


	## ### Web Browser
	dconf write /org/mate/desktop/keybindings/web-browser/name "'Web_Browser'"
	dconf write /org/mate/desktop/keybindings/web-browser/action "'firefox --new-tab about:blank'"
	dconf write /org/mate/desktop/keybindings/web-browser/binding "'<Shift><Alt>b'"




	return 0
}




##
## ## Mate / Config / Workspace
##

mod_mate_config_for_workspace () {


	gsettings set org.mate.Marco.general num-workspaces 5


	gsettings set org.mate.Marco.workspace-names name-1 'File'
	gsettings set org.mate.Marco.workspace-names name-2 'Edit'
	gsettings set org.mate.Marco.workspace-names name-3 'Web'
	gsettings set org.mate.Marco.workspace-names name-4 'Term'
	gsettings set org.mate.Marco.workspace-names name-5 'Misc'


	return 0
}




##
## ## Tool / Mate Terminal / Config
##

mod_tool_mate_terminal_config () {

	mod_tool_mate_terminal_config_for_preference

	mod_tool_mate_terminal_config_for_keybind

	mod_tool_mate_terminal_config_for_profile


	return 0
}

mod_tool_mate_terminal_config_for_preference () {


	local path="org.mate.terminal.global"




	gsettings set "${path}" confirm-window-close true



	return 0
}

mod_tool_mate_terminal_config_for_keybind () {


	local path="org.mate.terminal.keybindings"


	gsettings set "${path}" zoom-normal '<Control>0'

	gsettings set "${path}" zoom-out '<Control>minus'

	gsettings set "${path}" zoom-in '<Control>equal'


	return 0
}

mod_tool_mate_terminal_config_for_profile () {


	gsettings set org.mate.terminal.global profile-list "['default']"

	gsettings set org.mate.terminal.global default-profile "'default'"




	local profile="default"
	##profile=${profile:1:-1} # remove leading and trailing single quotes


	local path="org.mate.terminal.profile:/org/mate/terminal/profiles/${profile}/"




	gsettings set "${path}" visible-name 'Default'

	gsettings set "${path}" default-show-menubar false

	gsettings set "${path}" scrollbar-position "'hidden'"

	gsettings set "${path}" scroll-on-keystroke true

	gsettings set "${path}" silent-bell true

	gsettings set "${path}" cursor-blink-mode 'off'

	gsettings set "${path}" use-theme-colors false

	gsettings set "${path}" use-custom-default-size true

	gsettings set "${path}" use-system-font false

	gsettings set "${path}" font 'Monospace 14'

	gsettings set "${path}" allow-bold true

	gsettings set "${path}" bold-color '#000000000000'

	gsettings set "${path}" background-type 'transparent'

	gsettings set "${path}" background-darkness 0.85

	gsettings set "${path}" background-color '#000000000000'

	gsettings set "${path}" foreground-color '#AAAAAAAAAAAA'

	gsettings set "${path}" palette '#000000000000:#CCCC00000000:#4E4D9A9A0605:#C4C3A0A00000:#34346564A4A3:#7575504F7B7B:#060598979A9A:#D3D3D7D6CFCF:#555457565352:#EFEF29282928:#8A89E2E23434:#FCFBE9E84F4F:#72729F9ECFCF:#ADAC7F7EA8A8:#3434E2E2E2E2:#EEEDEEEDECEB'




	return 0
}




##
## ## Tool / Caja / Config
##

mod_tool_caja_config () {


	gsettings set org.mate.caja.preferences show-hidden-files true

	gsettings set org.mate.caja.preferences default-folder-viewer 'list-view'

	gsettings set org.mate.caja.list-view default-column-order "['name', 'size', 'type', 'date_modified', 'date_accessed', 'date_created', 'extension', 'group', 'where', 'mime_type', 'octal_permissions', 'owner', 'permissions', 'size_on_disk']"

	gsettings set org.mate.caja.list-view default-visible-columns "['name', 'size', 'type', 'date_modified']"




	gsettings set org.gtk.gtk4.Settings.FileChooser show-hidden true




	return 0
}




##
## ## Tool / Pluma / Config
##

mod_tool_pluma_config () {


	gsettings set org.mate.pluma auto-indent true

	gsettings set org.mate.pluma insert-spaces false

	gsettings set org.mate.pluma tabs-size 4

	gsettings set org.mate.pluma bracket-matching true

	gsettings set org.mate.pluma highlight-current-line true

	gsettings set org.mate.pluma display-line-numbers true

	gsettings set org.mate.pluma display-overview-map true

	gsettings set org.mate.pluma display-right-margin true

	gsettings set org.mate.pluma background-pattern 'none'

	gsettings set org.mate.pluma side-pane-visible true

	gsettings set org.mate.pluma statusbar-visible true

	gsettings set org.mate.pluma color-scheme 'oblivion'

	gsettings set org.mate.pluma use-default-font false

	gsettings set org.mate.pluma editor-font 'Monospace 14'

	gsettings set org.mate.pluma right-margin-position 80

	gsettings set org.mate.pluma enable-space-drawer-newline true

	gsettings set org.mate.pluma enable-space-drawer-space 'show-all'

	gsettings set org.mate.pluma enable-space-drawer-tab 'show-trailing'

	gsettings set org.mate.pluma shown-in-menu-encodings "['UTF-8', 'ISO-8859-15', 'UTF-16', 'BIG5', 'GB2312']"

	gsettings set org.mate.pluma active-plugins "['filebrowser', 'spell', 'modelines', 'externaltools', 'docinfo', 'trailsave', 'time']"








	return 0
}




##
## ## Mate / Config
##

mod_mate_config () {


	mod_mate_config_for_mouse_button_modifier

	mod_mate_config_for_keybind_main

	mod_mate_config_for_keybind_custom

	mod_mate_config_for_workspace


	return 0
}

mod_tool_config () {

	mod_tool_mate_terminal_config

	mod_tool_caja_config

	mod_tool_pluma_config


	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Mate Config / Adjustment / Start"
	echo "##"
	echo




	mod_mate_config

	mod_tool_config




	echo
	echo "##"
	echo "## ## Mate Config / Adjustment / Done"
	echo "##"
	echo




	return 0
}


##
## ## Main
##

__main__ () {

	mod_config_portal

	return 0
}

__main__ "${@}"
