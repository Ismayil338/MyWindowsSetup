## Remove “Shared Folder Synchronization” from Context Menu
```
reg delete "HKCR\CLSID\{6C467336-8281-4E60-8204-430CED96822D}" /f
```

## Remove Intel HD Graphics from Context Menu
```
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\igfxcui" /f & reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\igfxDTCM" /f
```

## Remove NVIDIA Control Panel from Context Menu
```
reg add "HKLM\Software\NVIDIA Corporation\Global\NvCplApi\Policies" /v ContextUIPolicy /t REG_DWORD /d 0 /f
```
