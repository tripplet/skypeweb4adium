skypeweb4adium
==============
[![Build Status](https://travis-ci.org/tripplet/skypeweb4adium.svg?branch=master)](https://travis-ci.org/tripplet/skypeweb4adium)

### How to build yourself
1. Checkout this git repository
2. Init submodules:
   `git submodule init; git submodule update`
3. Compile Adium:
   `cd adium; make`
6. Compile the plugin:
   `xcodebuild -configuration Release -project "skypeweb4adium.xcodeproj.xcodeproj"`
