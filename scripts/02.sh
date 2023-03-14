#!/bin/bash
echo "Frist make sure that you are sudo user."
echo "Listing users..."
getent passwd {1000..60000} | cut -d ":" -f 1
echo "Which user do you want to delete? (ctrl+c to quit)"
read USER
sudo userdel -f -r $USER
echo "Done."