## Return Old Control Panel Applets
### Generate CLSIDs

### Ready XML File for Personalization and Notification Area Icons
Download tasklist.xml from https://www.tenforums.com/customization/173142-restore-appearance-personalization-windows-10-control-panel.html#post2444574

### Get Control Panel Task Links
1. Install [Resource Hacker](https://www.angusj.com/resourcehacker/)
2. Copy shell32.dll.mun from C:\Windows\SystemResources
3. Rename it to shell32.dll and open from Resource Hacker
4. Go to XML -> 21 : 1033 and copy its content
5. You got Task Lists, same it as HTML, then change to XML

Now you can change CLSID you need with your generated CLSID
