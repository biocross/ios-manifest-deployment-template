echo "Configuring Manifest"
sed -i '' 's/APP_NAME/'$1'/g' public/manifest.plist
sed -i '' 's/BUNDLE_IDENTIFIER/'$2'/g' public/manifest.plist
sed -i '' 's#IPA_MANIFEST_URL#'$3'#g' public/manifest.plist #Using Delimiter # here because the substitution URL constains slashes
echo "Configuration Complete, Deploying to now.sh"
now --public
echo "Deployment complete to now at" $(pbpaste)