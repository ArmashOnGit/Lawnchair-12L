#!/sbin/sh

###########################
# MMT Reborn Logic
###########################

############
# Config Vars
############

# Set this to true if you want to skip mount for your module
SKIPMOUNT="false"
# Set this to true if you want to clean old files in module before injecting new module
CLEANSERVICE="false"
# Set this to true if you want to load vskel after module info print. If you want to manually load it, consider using load_vksel function
AUTOVKSEL="false"
# Set this to true if you want store debug logs of installation
DEBUG="true"

############
# Replace List
############

# List all directories you want to directly replace in the system
# Construct your list in the following example format
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"
# Construct your own list here
REPLACE="
/system/priv-app/AsusLauncherDev
/system/priv-app/Lawnchair
/system/priv-app/NexusLauncherPrebuilt
/system/product/priv-app/ParanoidQuickStep
/system/product/priv-app/ShadyQuickStep
/system/product/priv-app/TrebuchetQuickStep
/system/product/priv-app/NexusLauncherRelease
/system/system_ext/priv-app/DerpLauncherQuickStep
/system/system_ext/priv-app/NexusLauncherRelease
/system/system_ext/priv-app/TrebuchetQuickStep
/system/system_ext/priv-app/Lawnchair
/system/system_ext/priv-app/Launcher3QuickStep
"

############
# Permissions
############

# Set permissions
set_permissions() {
  set_perm_recursive "$MODPATH" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/bin" 0 0 0777 0755  
  set_perm_recursive "$MODPATH/system/product/priv-app" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/product/overlay" 0 0 0777 0755
  set_perm_recursive "$MODPATH/system/system_ext/priv-app" 0 0 0777 0755  
}

############
# Info Print
############

# Set what you want to be displayed on header of installation process
info_print() {
  ui_print ""
  ui_print "*********************************************"
  ui_print "    Systemless Lawnchair 12.1/12L" 
  ui_print "           By ArmashOnXDA"
  ui_print "*********************************************"

  sleep 2
}

############
# Main
############

# Change the logic to whatever you want
init_main() {
  ui_print ""
  ui_print "[*] Installing Lawnchair 12.1..."

  sleep 2

  ui_print ""
  ui_print "[*] Done!"  
  
  sleep 1.5

  ui_print ""
  ui_print " --- Notes --- "
  ui_print ""
  ui_print "[*] Reboot is required"
  ui_print ""
  ui_print "[*] Report issues to @GalaxyBlader on Telegram"
  ui_print ""
  ui_print "[*] Enjoy! :D"
  
  sleep 2.5  
}