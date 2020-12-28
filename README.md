skypeweb4adium
==============
Adium protocol plugin to support Skype instant messaging

[![Build Status](https://travis-ci.org/tripplet/skypeweb4adium.svg?branch=master)](https://travis-ci.org/tripplet/skypeweb4adium)

Download
========
Get the latest version [here](https://github.com/tripplet/skypeweb4adium/releases/)

Thanks
======
* This plugin is an adium wrapper around the libpurple plugin [skype4pidgin (web)](https://github.com/EionRobb/skype4pidgin/tree/master/skypeweb#readme) from [EionRobb](https://github.com/EionRobb)


### How to build yourself
1. Checkout this git repository and init submodules

   `git clone --recursive https://github.com/tripplet/skypeweb4adium.git`
   
2. Install openssl (necessary for building adium) 

   `brew install openssl`
  
3. Patch adium

   `git apply adium.patch`

3. Apply [*Make the opid stage optional*](https://github.com/EionRobb/skype4pidgin/pull/665) patch 

   `git apply --directory=skype4pidgin skype4pidgin_pull_request_665.patch`

4. Compile Adium:

   `cd adium; make -j`
   
5. Compile the plugin:

   `xcodebuild -configuration Release -project "skypeweb4adium.xcodeproj"`
