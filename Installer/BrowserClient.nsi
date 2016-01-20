; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "ChromeBroswer"
!define PRODUCT_VERSION "1.1.0.0"
!define PRODUCT_PUBLISHER "OldLemon"
!define PRODUCT_WEB_SITE "https://github.com/Orange637/ChromeBroswer"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\ChromeBroswer"
!define PRODUCT_UNINST_KEY "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\ChromeBroswer"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_FILE_PATH "..\Output"
!define PRODUCT_APP_FILE "ChromeBroswer.exe"

SetCompressor lzma

; MUI 1.67 compatible ------
!include "MUI.nsh"
!include "Scripts.nsi"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "NewLogo.ico"
!define MUI_UNICON "Uninstall.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "License.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\${PRODUCT_APP_FILE}"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "SimpChinese"

; MUI end ------
Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "招采进宝桌面客户端安装文件.exe"
InstallDir "$PROGRAMFILES\ChromeBroswer"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" "${PRODUCT_APP_FILE}"
ShowInstDetails show
ShowUnInstDetails show
BrandingText "${PRODUCT_WEB_SITE}"
;SetDatablockOptimize on

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  Call CheckNetFramework
  Call InstallVCRedist
  CreateDirectory "$INSTDIR\locales"
  CreateDirectory "$INSTDIR\Plugins"
  CreateDirectory "$INSTDIR\Assets\Htmls"
  CreateDirectory "$INSTDIR\Assets\Icons"
  ;File "${PRODUCT_FILE_PATH}\${PRODUCT_APP_FILE}"
  File "${PRODUCT_FILE_PATH}\BrowserClient.exe.config"
  File "${PRODUCT_FILE_PATH}\cef.pak"
  File "${PRODUCT_FILE_PATH}\CefSharp.BrowserSubprocess.Core.dll"
  File "${PRODUCT_FILE_PATH}\CefSharp.BrowserSubprocess.exe"
  File "${PRODUCT_FILE_PATH}\CefSharp.Core.dll"
  File "${PRODUCT_FILE_PATH}\CefSharp.dll"
  File "${PRODUCT_FILE_PATH}\CefSharp.WinForms.dll"
  File "${PRODUCT_FILE_PATH}\cef_100_percent.pak"
  File "${PRODUCT_FILE_PATH}\cef_200_percent.pak"
  ;File "${PRODUCT_FILE_PATH}\d3dcompiler_43.dll"
  ;File "${PRODUCT_FILE_PATH}\d3dcompiler_47.dll"
  ;File "${PRODUCT_FILE_PATH}\ffmpegsumo.dll"
  File "${PRODUCT_FILE_PATH}\icudtl.dat"
  File "${PRODUCT_FILE_PATH}\libcef.dll"
  File "${PRODUCT_FILE_PATH}\libEGL.dll"
  File "${PRODUCT_FILE_PATH}\libGLESv2.dll"
  File "${PRODUCT_FILE_PATH}\log4net.dll"
  File "${PRODUCT_FILE_PATH}\Microsoft.Windows.Shell.dll"
  File "${PRODUCT_FILE_PATH}\Style.dll"
  File "/oname=$INSTDIR\locales\am.pak" "${PRODUCT_FILE_PATH}\locales\am.pak"
  File "/oname=$INSTDIR\locales\ar.pak" "${PRODUCT_FILE_PATH}\locales\ar.pak"
  File "/oname=$INSTDIR\locales\bg.pak" "${PRODUCT_FILE_PATH}\locales\bg.pak"
  File "/oname=$INSTDIR\locales\bn.pak" "${PRODUCT_FILE_PATH}\locales\bn.pak"
  File "/oname=$INSTDIR\locales\ca.pak" "${PRODUCT_FILE_PATH}\locales\ca.pak"
  File "/oname=$INSTDIR\locales\cs.pak" "${PRODUCT_FILE_PATH}\locales\cs.pak"
  File "/oname=$INSTDIR\locales\da.pak" "${PRODUCT_FILE_PATH}\locales\da.pak"
  File "/oname=$INSTDIR\locales\de.pak" "${PRODUCT_FILE_PATH}\locales\de.pak"
  File "/oname=$INSTDIR\locales\el.pak" "${PRODUCT_FILE_PATH}\locales\el.pak"
  File "/oname=$INSTDIR\locales\en-GB.pak" "${PRODUCT_FILE_PATH}\locales\en-GB.pak"
  File "/oname=$INSTDIR\locales\en-US.pak" "${PRODUCT_FILE_PATH}\locales\en-US.pak"
  File "/oname=$INSTDIR\locales\es-419.pak" "${PRODUCT_FILE_PATH}\locales\es-419.pak"
  File "/oname=$INSTDIR\locales\es.pak" "${PRODUCT_FILE_PATH}\locales\es.pak"
  File "/oname=$INSTDIR\locales\et.pak" "${PRODUCT_FILE_PATH}\locales\et.pak"
  File "/oname=$INSTDIR\locales\fa.pak" "${PRODUCT_FILE_PATH}\locales\fa.pak"
  File "/oname=$INSTDIR\locales\fi.pak" "${PRODUCT_FILE_PATH}\locales\fi.pak"
  File "/oname=$INSTDIR\locales\fil.pak" "${PRODUCT_FILE_PATH}\locales\fil.pak"
  File "/oname=$INSTDIR\locales\fr.pak" "${PRODUCT_FILE_PATH}\locales\fr.pak"
  File "/oname=$INSTDIR\locales\gu.pak" "${PRODUCT_FILE_PATH}\locales\gu.pak"
  File "/oname=$INSTDIR\locales\he.pak" "${PRODUCT_FILE_PATH}\locales\he.pak"
  File "/oname=$INSTDIR\locales\hi.pak" "${PRODUCT_FILE_PATH}\locales\hi.pak"
  File "/oname=$INSTDIR\locales\hr.pak" "${PRODUCT_FILE_PATH}\locales\hr.pak"
  File "/oname=$INSTDIR\locales\hu.pak" "${PRODUCT_FILE_PATH}\locales\hu.pak"
  File "/oname=$INSTDIR\locales\id.pak" "${PRODUCT_FILE_PATH}\locales\id.pak"
  File "/oname=$INSTDIR\locales\it.pak" "${PRODUCT_FILE_PATH}\locales\it.pak"
  File "/oname=$INSTDIR\locales\ja.pak" "${PRODUCT_FILE_PATH}\locales\ja.pak"
  File "/oname=$INSTDIR\locales\kn.pak" "${PRODUCT_FILE_PATH}\locales\kn.pak"
  File "/oname=$INSTDIR\locales\ko.pak" "${PRODUCT_FILE_PATH}\locales\ko.pak"
  File "/oname=$INSTDIR\locales\lt.pak" "${PRODUCT_FILE_PATH}\locales\lt.pak"
  File "/oname=$INSTDIR\locales\lv.pak" "${PRODUCT_FILE_PATH}\locales\lv.pak"
  File "/oname=$INSTDIR\locales\ml.pak" "${PRODUCT_FILE_PATH}\locales\ml.pak"
  File "/oname=$INSTDIR\locales\mr.pak" "${PRODUCT_FILE_PATH}\locales\mr.pak"
  File "/oname=$INSTDIR\locales\ms.pak" "${PRODUCT_FILE_PATH}\locales\ms.pak"
  File "/oname=$INSTDIR\locales\nb.pak" "${PRODUCT_FILE_PATH}\locales\nb.pak"
  File "/oname=$INSTDIR\locales\nl.pak" "${PRODUCT_FILE_PATH}\locales\nl.pak"
  File "/oname=$INSTDIR\locales\pl.pak" "${PRODUCT_FILE_PATH}\locales\pl.pak"
  File "/oname=$INSTDIR\locales\pt-BR.pak" "${PRODUCT_FILE_PATH}\locales\pt-BR.pak"
  File "/oname=$INSTDIR\locales\pt-PT.pak" "${PRODUCT_FILE_PATH}\locales\pt-PT.pak"
  File "/oname=$INSTDIR\locales\ro.pak" "${PRODUCT_FILE_PATH}\locales\ro.pak"
  File "/oname=$INSTDIR\locales\ru.pak" "${PRODUCT_FILE_PATH}\locales\ru.pak"
  File "/oname=$INSTDIR\locales\sk.pak" "${PRODUCT_FILE_PATH}\locales\sk.pak"
  File "/oname=$INSTDIR\locales\sl.pak" "${PRODUCT_FILE_PATH}\locales\sl.pak"
  File "/oname=$INSTDIR\locales\sr.pak" "${PRODUCT_FILE_PATH}\locales\sr.pak"
  File "/oname=$INSTDIR\locales\sv.pak" "${PRODUCT_FILE_PATH}\locales\sv.pak"
  File "/oname=$INSTDIR\locales\sw.pak" "${PRODUCT_FILE_PATH}\locales\sw.pak"
  File "/oname=$INSTDIR\locales\ta.pak" "${PRODUCT_FILE_PATH}\locales\ta.pak"
  File "/oname=$INSTDIR\locales\te.pak" "${PRODUCT_FILE_PATH}\locales\te.pak"
  File "/oname=$INSTDIR\locales\th.pak" "${PRODUCT_FILE_PATH}\locales\th.pak"
  File "/oname=$INSTDIR\locales\tr.pak" "${PRODUCT_FILE_PATH}\locales\tr.pak"
  File "/oname=$INSTDIR\locales\uk.pak" "${PRODUCT_FILE_PATH}\locales\uk.pak"
  File "/oname=$INSTDIR\locales\vi.pak" "${PRODUCT_FILE_PATH}\locales\vi.pak"
  File "/oname=$INSTDIR\locales\zh-CN.pak" "${PRODUCT_FILE_PATH}\locales\zh-CN.pak"
  File "/oname=$INSTDIR\locales\zh-TW.pak" "${PRODUCT_FILE_PATH}\locales\zh-TW.pak"
  File "/oname=$INSTDIR\Plugins\NPSWF32_18_0_0_95.dll" "${PRODUCT_FILE_PATH}\Plugins\NPSWF32_18_0_0_95.dll"
  File "/oname=$INSTDIR\Assets\Icons\defaultIcon.png" "${PRODUCT_FILE_PATH}\Assets\Icons\defaultIcon.png"
  File "/oname=$INSTDIR\Plugins\Assets\Htmls\Error.html" "${PRODUCT_FILE_PATH}\Assets\Htmls\Error.html"
  ;File "License.txt"
  CreateDirectory "$SMPROGRAMS\ChromeBroswer"
  CreateShortCut "$SMPROGRAMS\ChromeBroswer\ChromeBroswer.lnk" "$INSTDIR\${PRODUCT_APP_FILE}"
  CreateShortCut "$DESKTOP\ChromeBroswer.lnk" "$INSTDIR\${PRODUCT_APP_FILE}"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\ChromeBroswer\Uninstall ChromeBroswer.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\${PRODUCT_APP_FILE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_DIR_REGKEY}" "Path" "$INSTDIR"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "${PRODUCT_NAME}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\${PRODUCT_APP_FILE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) 已成功地从你的计算机移除。"
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "你确实要完全移除 $(^Name) ，其及所有的组件？" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$DESKTOP\ChromeBroswer.lnk"
  RMDir /r "$SMPROGRAMS\ChromeBroswer"
  RMDir /r "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
