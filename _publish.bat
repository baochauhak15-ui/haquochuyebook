@echo off
cd /d "C:\Users\My Asus\Downloads\haquochuy\haquochuyebook"
echo === START %date% %time% === > "_publish_log.txt"
if exist ".git\index.lock" del /f /q ".git\index.lock"
echo --- making index.html from indexfixfinalnopw.html --- >> "_publish_log.txt"
copy /Y "indexfixfinalnopw.html" "index.html" >> "_publish_log.txt" 2>&1
echo --- git add --- >> "_publish_log.txt"
git add -A >> "_publish_log.txt" 2>&1
echo --- git commit --- >> "_publish_log.txt"
git -c user.name="baochauhak15-ui" -c user.email="baochauhak15@gmail.com" commit -m "Publish HPC ebook homepage with all images" >> "_publish_log.txt" 2>&1
echo --- git push --- >> "_publish_log.txt"
git push origin main >> "_publish_log.txt" 2>&1
echo === DONE %time% === >> "_publish_log.txt"
