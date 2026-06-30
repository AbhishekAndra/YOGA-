@echo off
cd /d C:\Users\91939\Documents\files
echo =============================================
echo  Pushing latest files to GitHub (AbhishekAndra)
echo =============================================
echo.

echo Clearing cached GitHub credentials...
cmdkey /delete:LegacyGeneric:target=git:https://github.com
cmdkey /delete:git:https://github.com
cmdkey /delete:WindowsLive:target=git:https://github.com
git-credential-manager github logout 2>nul

echo Setting identity...
git config user.email "abhishekandra6445@gmail.com"
git config user.name "Abhishek Andra"

echo Setting remote...
git remote set-url origin https://github.com/AbhishekAndra/YoGa-.git 2>nul || git remote add origin https://github.com/AbhishekAndra/YoGa-.git

echo Adding all files...
git add -A

echo Committing...
git commit -m "Add email display in dashboards + latest site files"

echo Pushing (browser login will open if needed)...
echo Sign in as AbhishekAndra when prompted!
git push -u origin main

echo.
echo =============================================
echo  Done!
echo  Next: Go to github.com/AbhishekAndra/YoGa-
echo  Settings > Pages > Deploy from main branch
echo =============================================
pause
