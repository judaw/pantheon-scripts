echo Site:
read SITE
echo Env:
read ENV
rsync -rLvz --size-only --ipv4 --ignore-existing --progress -e 'ssh -p 2222' files/. --temp-dir=~/tmp/ $ENV.$SITE@appserver.$ENV.$SITE.drush.in:files/
