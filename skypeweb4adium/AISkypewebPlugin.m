//
//  AISkypeWebPlugin.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 26.04.15.
//  Copyright (c) 2015 Tobias Tangemann. All rights reserved.
//

#import "AISkypewebPlugin.h"
#import "PurpleSkypeWebService.h"

#import "libskypeweb.h"

extern void purple_init_skypeweb_plugin();

@implementation AISkypewebPlugin

- (void)installPlugin
{
    purple_init_skypeweb_plugin();
    [PurpleSkypeWebService registerService];
}

- (void)uninstallPlugin
{
}

- (void)installLibpurplePlugin
{
}

- (void)loadLibpurplePlugin
{
}

- (NSString *)pluginAuthor
{
  return @"Tobias Tangemann";
}

-(NSString *)pluginVersion
{
  return @"1.0";
}

-(NSString *)pluginDescription
{
  return @"SkypeWeb";
}

@end
