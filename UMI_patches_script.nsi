; MUI Settings / Icons
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\orange-install-nsis.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\orange-uninstall-nsis.ico"

; MUI Settings / Header
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_RIGHT
!define MUI_HEADERIMAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Header\orange-r-nsis.bmp"
!define MUI_HEADERIMAGE_UNBITMAP "${NSISDIR}\Contrib\Graphics\Header\orange-uninstall-r-nsis.bmp"

; MUI Settings / Wizard
!define MUI_WELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\orange-nsis.bmp"
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\orange-uninstall-nsis.bmp"

OutFile "Mblock patch.exe"


Page license
#Page components
Page directory
Page instfiles

LicenseForceSelection radiobuttons "i accept" "i decline"
LicenseData license.txt
LicenseText "Hello this is UMI education Mblock patches" "I Agree"

DirText "Choose the directory you installed MBlock on your computer"

Section
       SetOutPath $INSTDIR
       SetOutPath $INSTDIR\Arduino
       File /r "libraries"
       RMDir /r "$INSTDIR\Arduino\libraries\RobotIRremote"
SectionEnd