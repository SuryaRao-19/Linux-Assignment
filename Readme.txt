
#!/bin/bash

echo "----- FILE NAVIGATION COMMANDS -----"

# 1. ls
echo "Running ls:"
ls

# 2. cd
echo "Creating test directory for cd..."
mkdir -p demo_folder
cd demo_folder
echo "Now inside demo_folder"

# 3. pwd
echo "Current directory path:"
pwd

# 4. tree (may need to install)
echo "Tree view:"
tree .

echo "----- FILE & DIRECTORY MANAGEMENT -----"

# 5. mkdir
echo "Creating subfolder 'testdir'..."
mkdir testdir

# 6. touch
echo "Creating file 'file1.txt'..."
touch file1.txt

# 7. cp
echo "Copying file1.txt to copy_file1.txt..."
cp file1.txt copy_file1.txt

# 8. mv
echo "Renaming copy_file1.txt to renamed_file.txt..."
mv copy_file1.txt renamed_file.txt

# 9. rm
echo "Removing renamed file..."
rm renamed_file.txt

echo "----- PERMISSION MANAGEMENT -----"

# 10. chmod
echo "Changing permission of file1.txt..."
chmod 755 file1.txt

# 11. chown (safe demo only)
echo "Showing current owner of file1.txt:"
ls -l file1.txt
echo "Note: chown requires sudo; skipping in script."

echo "----- PROCESS MONITORING -----"

# 12. ps
echo "Showing running processes:"
ps

# 13. top (cannot auto-run interactively)
echo "Running 'top' is interactive, skipping..."

# 14. kill
echo "Starting a sleep process to kill..."
sleep 60 &
PID=$!
echo "Killing process with PID $PID"
kill $PID

echo "----- NETWORK COMMANDS -----"

# 15. ping
echo "Pinging google.com (1 packet)..."
ping -c 1 google.com

# 16. ip a
echo "Showing network information:"
ip a

# 17. netstat
echo "Showing network connections:"
netstat -tulnp

# 18. hostname
echo "System hostname:"
hostname

# 19. whoami
echo "Current user:"
whoami

# 20. history
echo "Showing command history:"
history

echo "----- SCRIPT COMPLETE -----"
