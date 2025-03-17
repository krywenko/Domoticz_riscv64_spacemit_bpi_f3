 git clone https://github.com/domoticz/domoticz.git dev-domoticz
 cd dev-domoticz
 git pull
 cmake -DCMAKE_BUILD_TYPE=Release CMakeLists.txt
 #cmake -DCMAKE_BUILD_TYPE=Release
 make -j 8
 make install
 cd ..
 rm -r dev-domoticz
