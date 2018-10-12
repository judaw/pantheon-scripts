echo Site Name:
read SITE_HUMAN_NAME
echo "Site Macince Name (dash sepereated words):"
read SITE
export PANTHEON_SITE_NAME=$SITE
PATH_TO_TERMINUS/terminus site:create --org ORG_ID $PANTHEON_SITE_NAME "$SITE_HUMAN_NAME" empty
export PANTHEON_SITE_GIT_URL="$(PATH_TO_TERMINUS/terminus connection:info $PANTHEON_SITE_NAME.dev --field=git_url)"
git remote add origin $PANTHEON_SITE_GIT_URL
PATH_TO_TERMINUS/terminus connection:set $PANTHEON_SITE_NAME.dev git
