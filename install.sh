date -s "5 OCT 2021 10:00:00"

git clone https://github.com/elockman/libmicrohttpd.git
cd libmicrohttpd/
./configure
make
sudo make install
cd ..

mkdir /usr/local
mkdir /usr/local/lib
git clone https://github.com/babelouest/orcania.git
cd orcania/
make
sudo make install
cd ..

git clone https://github.com/babelouest/yder.git
cd yder/src
make Y_DISABLE_JOURNALD=1
sudo make install

cd ../..
git clone https://github.com/babelouest/ulfius.git
cd ulfius/
make CURLFLAG=1 GNUTLSFLAG=1 JANSSONFLAG=1
sudo make install

cd ..
git clone https://github.com/elockman/web_app.git
mv web_app/ ./ulfius/example_programs/
cd ./ulfius/example_programs/web_app/
make
