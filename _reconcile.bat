@echo off
cd /d "C:\Users\My Asus\Downloads\haquochuy\haquochuyebook"
echo === RECONCILE %date% %time% === > "_reconcile_log.txt"
if exist ".git\index.lock" del /f /q ".git\index.lock"
git config --global user.name "baochauhak15-ui" >> "_reconcile_log.txt" 2>&1
git config --global user.email "baochauhak15@gmail.com" >> "_reconcile_log.txt" 2>&1
echo --- stage and commit any pending --- >> "_reconcile_log.txt"
git add -A >> "_reconcile_log.txt" 2>&1
git commit -m "chore: publish logs" >> "_reconcile_log.txt" 2>&1
echo --- merge origin/main keeping ours --- >> "_reconcile_log.txt"
git merge -s ours origin/main -m "Merge remote main; keep complete local ebook (index.html + all images)" >> "_reconcile_log.txt" 2>&1
echo --- result --- >> "_reconcile_log.txt"
git status -sb >> "_reconcile_log.txt" 2>&1
git log --oneline -6 >> "_reconcile_log.txt" 2>&1
echo === DONE %time% === >> "_reconcile_log.txt"
