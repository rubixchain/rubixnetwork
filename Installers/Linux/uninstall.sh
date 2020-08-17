DIRECTORY=/usr/share/rubix/
DID=/usr/share/applications/RubixDID.desktop
WALLET=/usr/share/applications/RubixWallet.desktop
if [ -d "$DIRECTORY" ] || [ -f "$DID" ] || [ -f "$WALLET" ]; then
rm -r $DIRECTORY
rm $DID
rm $WALLET
echo "Removed existing app" 
else
echo "No installation found"
fi