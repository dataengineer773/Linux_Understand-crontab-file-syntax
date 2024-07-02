# Understand crontab file syntax
crontab -l

# Add a job to crontab
crontab -e

# Add the below line at the end of the crontab file:
0 21 * * * echo "Welcome to cron" >> /tmp/echo.txt

# Check if the job is added to the crontab by running the following command:
crontab -l

# Schedule a shell script
# Let us create a simple shell script that prints the current time and the current disk usage statistics.
# Step 1: On the menu on the lab screen, use File->New File to create a new file:
# Step 2: Give the file name as diskusage.sh and click 'OK'
# Step 3: Save the following commands into the shell script:
#! /bin/bash
# print the current date time
date
print the disk free statistics
df -h


# Step 4: Save the file using the File->Save menu option.
# Step 5: Verify that the script is working:
chmod u+x diskusage.sh
./diskusage.sh

# Edit the crontab:
crontab -e

# Add the following line to the end of the file:
0 0 * * * /home/project/diskusage.sh >>/home/project/diskusage.log

# Check if the job is added to the crontab by running the following command:
crontab -l

# Caution: This removes all your cron jobs. Be extra cautious when you use this command on a production server:
crontab -r

# Verify if your crontab is removed:
crontab -l
