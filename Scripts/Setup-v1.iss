#define MyAppName "Solidworks 2025 Crack Fix"

[Setup]
AppId={{2D2F9873-8876-4244-84F4-C2A3CC76CA21}
AppName={#MyAppName}
AppVersion=1.0
DefaultDirName=C:\Program Files\SOLIDWORKS Corp
PrivilegesRequiredOverridesAllowed=commandline
OutputDir=D:\Others\Myself\Personal\Programming\GitHub\Solidworks 2025 Crack Fix\Setup
OutputBaseFilename=Solidworks2025_CrackFix
SetupIconFile=D:\Others\Myself\Personal\Programming\GitHub\Solidworks 2025 Crack Fix\Icons\solidworks.ico
SolidCompression=yes
WizardStyle=modern dark
RestartIfNeededByRun=yes
Uninstallable=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\Others\Myself\Personal\Programming\GitHub\Solidworks 2025 Crack Fix\Source\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "D:\Others\Myself\Personal\Programming\GitHub\Solidworks 2025 Crack Fix\Registries\SolidSQUADLoaderEnabler.reg"; DestDir: "{app}"; Flags: ignoreversion

[Run]
Filename: "regedit.exe"; Parameters: "/s ""{app}\SolidSQUADLoaderEnabler.reg"""; Flags: runhidden; Description: "Applying registry settings"

[Code]
function NeedRestart(): Boolean;
begin
  Result := True;
end;