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