# VPN-Deployment-Tool
An .exe for simple VPN adding to Windows Machines, including source code.

The .exe is required to be run in admin as the default (non changable via the .exe) to inject the VPN into global phone book.

**How to use the .exe: **
1. Enter VPN Name (E.g. "Company X VPN")
![image](https://github.com/itsharryshelton/VPN-Deployment-Tool/assets/136495601/1b4abc46-426d-4508-b4fa-3e6a12166f40)

2. Enter VPN Address (E.g. "remote.companyx.com" or "193.1.1.1")
![image](https://github.com/itsharryshelton/VPN-Deployment-Tool/assets/136495601/b2565ec7-d892-47a8-8cba-66151fb02625)

3. "Yes" or "No" to remember credentials
![image](https://github.com/itsharryshelton/VPN-Deployment-Tool/assets/136495601/272028ea-5083-486e-af50-6cdbfbc9cb79)

4. Yes, selecting no will fail this setup
![image](https://github.com/itsharryshelton/VPN-Deployment-Tool/assets/136495601/b3fe4dbb-0873-4b51-b8a2-b4d494703fd0)

5. Little prompt to say it ran okay
![image](https://github.com/itsharryshelton/VPN-Deployment-Tool/assets/136495601/cb6eb072-5695-4ac1-a52c-9d7c8bd2fd95)

6. Find the script in Windows VPN
![image](https://github.com/itsharryshelton/VPN-Deployment-Tool/assets/136495601/95d0f438-b7f2-46f0-a8a4-497e678ee486)

I have tested this script working on Windows 10 Business and Windows 11 Pro - I don't see why it won't work on other versions of 10 and 11, no idea about 7 or 8/8.1.

The Source folder includes the following files:
- .PNG and .ICO files for the icon of the application.
- Two different source scripts.

The "prompting" script is exactly the same script that the .exe is using, just in the plain .ps1 format if you wanted to add or change anything.
The "Edit First" one is a non prompting one, you will require to edit this - this is best for deployment to machines through an RMM or logon script etc.

At no point does this script ask for user logon details - Windows will prompt the user for this.

Please note that this script will only support Windows BuiltIn by default, so for example if you have Sonicwall Mobile Connect installed on the machine, it won't be able to add that via this, that will need changing independently.
