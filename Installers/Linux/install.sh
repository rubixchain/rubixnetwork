DIRECTORY=/usr/share/rubix/
DID=/usr/share/applications/RubixDID.desktop
WALLET=/usr/share/applications/RubixWallet.desktop
if [ -d "$DIRECTORY" ] || [ -f "$DID" ] || [ -f "$WALLET" ]; then
echo "Removing existing app"
rm -r $DIRECTORY
rm $DID
rm $WALLET 
fi
mkdir $DIRECTORY
mv Resources/RubixDID.desktop /usr/share/applications
mv Resources/RubixWallet.desktop /usr/share/applications
mv Resources/* $DIRECTORY
echo "Done setting up"