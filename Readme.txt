
pwd
ls
mkdir project_test
cd project_test
touch notes.txt
ls -l
cp notes.txt notes_backup.txt
mkdir documents
mv notes.txt documents/
ls -l
rm notes_backup.txt
chmod 744 documents
ls -l


nano academic_setup.sh


#!/bin/bash

echo "Setting up academic folder structure..."

mkdir -p Academic/Year1/Sem1/Assignments
mkdir -p Academic/Year1/Sem1/Notes
mkdir -p Academic/Year1/Sem2/Assignments
mkdir -p Academic/Year1/Sem2/Notes

mkdir -p Academic/Year2/Sem3/Projects
mkdir -p Academic/Year2/Sem4/Internships

mkdir -p Academic/Certifications
mkdir -p Academic/Projects
mkdir -p Academic/Hackathons

echo "Folder structure created successfully!"
echo "Done."
