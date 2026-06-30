@echo off
cd /d C:\Users\91939\Documents\files
echo Step 1: Clearing cached GitHub credentials...
cmdkey /delete:LegacyGeneric:target=git:https://github.com
cmdkey /delete:git:https://github.com
echo Step 2: Setting git identity...
git config user.email "abhishekandra6445@gmail.com"
git config user.name "Abhishek Andra"
echo Step 3: Fixing remote...
git remote remove origin
git remote add origin https://github.com/AbhishekAndra/YoGa-.git
echo Step 4: Pushing to GitHub...
echo A login window will appear - sign in with AbhishekAndra account (abhishekandra6445@gmail.com)
git push -u origin main
echo.
echo Done! Press any key to close.
pause
