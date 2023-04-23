; 脚本由 Inno Setup 脚本向导 生成！
; 有关创建 Inno Setup 脚本文件的详细资料请查阅帮助文档！

#define MyAppName "RTSP网页播放器"
#define MyAppVersion "2.2.10.2"
#define MyAppPublisher "成都佐罗软件有限公司"
#define MyAppURL "http://www.zorrosoft.com/"
#define MyAppExeName "ZbaSetup.exe"

[Setup]
; 注: AppId的值为单独标识该应用程序。
; 不要为其他安装程序使用相同的AppId值。
; (若要生成新的 GUID，可在菜单中点击 "工具|生成 GUID"。)
AppId={{68A2782F-317B-5176-A5E5-CED2D4F00BA8}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\RtspWebPlayer
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
; 以下行修改为实际的路径。
LicenseFile=E:\Release\GitHub\WebRunLocal\BrowserApplet\license.txt
; 以下行取消注释，以在非管理安装模式下运行（仅为当前用户安装）。
PrivilegesRequired=admin
OutputDir=E:\Release
OutputBaseFilename=RtspWebPlayerIns
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "E:\Release\GitHub\WebRunLocal\BrowserApplet\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; 注意: 不要在任何共享系统文件上使用“Flags: ignoreversion”

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\ZbaSetup.exe";Parameters: "/S /I";Description: "安装服务";StatusMsg:"正在安装服务，请稍后..."

[UninstallRun]
Filename: "{app}\ZbaSetup.exe";Parameters: "/S /U";StatusMsg:"正在停止服务并卸载，请稍后..."

