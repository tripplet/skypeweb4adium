skypeweb4adium
==============
Adium protocol plugin to support Sykpe instant messaging

[![Build Status](https://travis-ci.org/tripplet/skypeweb4adium.svg?branch=master)](https://travis-ci.org/tripplet/skypeweb4adium)

Download
========
Get the latest version [here](https://github.com/tripplet/skypeweb4adium/releases/)

Thanks
======
* This plugin is an adium wrapper around the libpurple plugin [skype4pidgin (web)](https://github.com/EionRobb/skype4pidgin/tree/master/skypeweb#readme) from [EionRobb](https://github.com/EionRobb)


### How to build yourself
1. Checkout this git repository
2. Init submodules:
   `git submodule init; git submodule update`
3. Compile Adium:
   `cd adium; make`
6. Compile the plugin:
   `xcodebuild -configuration Release -project "skypeweb4adium.xcodeproj.xcodeproj"`
