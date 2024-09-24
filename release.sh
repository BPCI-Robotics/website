# This is a janky script to release the website to Github pages.
# The Github pages repository should be in the same directory as the website source.
# This script should be invoked in the website source repository.

cd ../BPCI-Robotics.github.io
git pull
cd ../website

rm -r ./build/*
bundle exec middleman build
cp -r ../BPCI-Robotics.github.io/.git ./build

rm -rf ../BPCI-Robotics.github.io/*
cp -r ./build/* ../BPCI-Robotics.github.io

cd ../BPCI-Robotics.github.io
git add .
git commit -m "Update website"
git push

echo "Done"