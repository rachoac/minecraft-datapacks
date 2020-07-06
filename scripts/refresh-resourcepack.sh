cd ..
cd racho/resourcepacks
rm -f survivalworld.zip
cd survivalworld
zip -r survivalworld.zip ./*
mv survivalworld.zip ../.
cd ../../..
git add racho/resourcepacks/survivalworld.zip
git commit -m'update resourcepack'
git push origin master