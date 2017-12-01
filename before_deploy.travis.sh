#!/usr/bin/env bash

# SET YOUR VARIABLES!
MY_404_TITLE="TinyGU 404 redirect page";                                          # the title of the error page
MY_REPOSITORY_NAME="tinyGU";                                                      # name of the repository (to set the redirect link)
GIST_ERROR_PAGE="https://gist.github.com/ac3121fbc85ecdedd59b440b551dd02a.git";   # the 404.html you want to use, saved as gist

GIST_FOLDER=$(basename -s .git "$GIST_ERROR_PAGE");
echo "GIST_FOLDER: $GIST_FOLDER";

ls -lha;
ls -lha dist/;

echo "git clone >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
git clone --progress "$GIST_ERROR_PAGE" "$GIST_FOLDER";
ls -lha;
#ls -lha dist/;
ls -lha "$GIST_FOLDER";
#ls -R ../ > dist/ls1.txt;

echo "mv >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
mv "$GIST_FOLDER/404.html" dist/;
ls -lha "$GIST_FOLDER";
ls -lha dist/;

echo "rf >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
rm -rf "$GIST_FOLDER";
ls -lha;

echo "sed >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
cat -n dist/404.html;
sed -i -e "s/404_TITLE/$MY_404_TITLE/g; s/REPOSITORY_NAME/$MY_REPOSITORY_NAME/g" dist/404.html;
cat -n dist/404.html;
#ls -lha;
#ls -lha dist/;