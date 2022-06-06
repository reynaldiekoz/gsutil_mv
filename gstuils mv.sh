#!/bin/bash
#reynaldiekoz gsutilsmv backup script
time="$(date)"
echo "###########################################"
echo "Gsutil mv Started at $time maszeh!"

#these  cron session didnt know about python dir for cloud sdk even its already listed on $PATH
export CLOUDSDK_PYTHON=/usr/bin/python2.7


# listing file and put on filelist

#find /cc-tmp/  -type f -name "testing*" -o -name "mencoba*"  >> /cc-tmp/filelist
find sourcedir  -type f -name 'filename'  >> listfiledir
find sourcedir  -type f -name 'filename'  >> listfiledir


# stdin filelist and mv to gcs
cat listfiledir | /root/google-cloud-sdk/bin/gsutil -m mv -I gs://Destinationbucket
cat listfiledir | /root/google-cloud-sdk/bin/gsutil -m mv -I gs://Destinationbucket
time2="$(date)"
echo "Gsutil mv Completed at $time2 maszeh!"
#Delete datalist and loglist after its done
echo " Deleting file list "
rm -rf listfiledir
rm -rf listfiledir
echo "###########################################"
