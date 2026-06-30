@echo off
cd /d C:\Users\91939\Downloads\files
echo Clearing cached GitHub credentials...
cmdkey /delete:LegacyGeneric:target=git:https://github.com
cmdkey /delete:git:https://github.com

echo Setting git identity...
git config user.email "abhishekandra6445@gmail.com"
git config user.name "Abhishek Andra"

echo Updating remote URL to AbhishekAndra account...
git remote set-url origin https://github.com/AbhishekAndra/YoGa-.git

echo Pushing to GitHub...
git push -u origin main

echo.
echo Done! Press any key to close.
pause
