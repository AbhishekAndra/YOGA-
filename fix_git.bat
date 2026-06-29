@echo off
cd /d C:\Users\91939\Documents\files
echo Step 1: Clearing cached GitHub credentials...
cmdkey /delete:LegacyGeneric:target=git:https://github.com
cmdkey /delete:git:https://github.com
echo Step 2: Fixing remote...
git remote remove origin
git remote add origin https://github.com/andraabhishek-lgtm/yoga-.git
echo Step 3: Pushing to GitHub...
echo A login window will appear - sign in with andraabhishek-lgtm account
git push -u origin main
echo.
echo Done! Press any key to close.
pause
