@echo off
cd /d C:\Users\91939\Downloads\files

echo Step 1: Removing all GitHub credentials from Windows...
cmdkey /delete:LegacyGeneric:target=git:https://github.com
cmdkey /delete:git:https://github.com
cmdkey /delete:WindowsLive:target=git:https://github.com

echo Step 2: Clearing Git Credential Manager cache...
git-credential-manager github logout
echo (logout done or not needed)

echo Step 3: Rejecting any cached github token...
echo protocol=https>tmp_cred.txt
echo host=github.com>>tmp_cred.txt
git credential reject <tmp_cred.txt
del tmp_cred.txt 2>nul

echo Step 4: Setting identity and remote...
git config user.email "abhishekandra6445@gmail.com"
git config user.name "Abhishek Andra"
git remote set-url origin https://github.com/AbhishekAndra/YoGa-.git

echo Step 5: Pushing (a browser login window will open)...
echo Please sign in as AbhishekAndra when prompted!
git push -u origin main

echo.
echo Press any key to close.
pause
