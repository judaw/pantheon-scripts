echo Site:
read SITE
echo Env:
read ENV
PATH_TO_TERMINUS/terminus backup:get $SITE.$ENV --element=database --to=$SITE.sql.gz -vv
PATH_TO_TERMINUS/terminus backup:get $SITE.$ENV --element=files --to=$SITE.tar.gz -vv
