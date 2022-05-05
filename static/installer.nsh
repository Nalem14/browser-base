!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Orion" "Software\Clients\StartMenuInternet\Orion\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Orion" "" "Orion HTML Document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\Application" "AppUserModelId" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\Application" "ApplicationIcon" "$INSTDIR\Orion.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\Application" "ApplicationName" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\Application" "ApplicationCompany" "Orion"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\Application" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\DefaultIcon" "DefaultIcon" "$INSTDIR\Orion.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Orion\shell\open\command" "" '"$INSTDIR\Orion.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Orion" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Orion" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion" "" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\DefaultIcon" "" "$INSTDIR\Orion.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities" "ApplicationDescription" "A privacy-focused, extensible and beautiful web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities" "ApplicationName" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities" "ApplicationIcon" "$INSTDIR\Orion.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities\FileAssociations" ".htm" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities\FileAssociations" ".html" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities\URLAssociations" "http" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities\URLAssociations" "https" "Orion"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\Capabilities\StartMenu" "StartMenuInternet" "Orion"
  
  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\InstallInfo" "IconsVisible" 1
  
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion\shell\open\command" "" "$INSTDIR\Orion.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Orion"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Orion"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Orion"
!macroend