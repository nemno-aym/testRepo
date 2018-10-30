#!/usr/bin/env bash
# install fastlane
echo "deploy to HockeyApp"

HOCKEYAPP_API_TOKEN={"bcf30a6a2e74429db9f6209975435367"}
HOCKEYAPP_APP_ID={"1d2efae813e84184a1736209867059ca"}

# Example: Upload master branch app binary to HockeyApp using the API
if [ "$APPCENTER_BRANCH" == "master" ];
then
curl \
-F "status=2" \
-F "notify=1" \
-F "ipa=@TestProjectForCITesting.ipa" \
-H "X-HockeyAppToken: $HOCKEYAPP_API_TOKEN" \
https://rink.hockeyapp.net/api/2/apps/$HOCKEYAPP_APP_ID/app_versions/upload
else
echo "Current branch is $APPCENTER_BRANCH"
fi
