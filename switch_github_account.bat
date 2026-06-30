@echo off
echo =============================================
echo  Switching GitHub Account for Deployment
echo =============================================
echo.
echo Clearing all cached GitHub credentials...
cmdkey /delete:LegacyGeneric:target=git:https://github.com
cmdkey /delete:git:https://github.com
cmdkey /delete:WindowsLive:target=git:https://github.com

echo.
echo Setting git identity to abhishekandra6445@gmail.com...
cd /d C:\Users\91939\Documents\files
git config user.email "abhishekandra6445@gmail.com"
git config user.name "Abhishek Andra"

echo.
echo Done! Old credentials cleared.
echo.
echo NEXT STEP: Run fix_git.bat to push.
echo When the GitHub login window appears, sign in
echo with GitHub username: AbhishekAndra
echo.
pause
