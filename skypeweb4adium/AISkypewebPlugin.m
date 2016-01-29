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

#import <Adium/ESDebugAILog.h>

extern void purple_init_skypeweb_plugin();

@implementation AISkypewebPlugin

- (void)installPlugin
{
    purple_init_skypeweb_plugin();
    [PurpleSkypeWebService registerService];
}

- (void)loadLibpurplePlugin
{
    AILog(@"Loading skypeweb4adium plugin %s (skypeweb4pidgin: "SKYPEWEB_PLUGIN_VERSION")",[[self pluginVersion] UTF8String]);
}

- (NSString *)pluginAuthor      { return @"Tobias Tangemann"; }
- (NSString *)pluginDescription { return @"SkypeWeb"; }
- (NSString *)pluginURL         { return @"https://github.com/tripplet/skypeweb4adium#readme"; }
- (NSString *)pluginVersion     { return [[[NSBundle bundleForClass:[self class]] infoDictionary] objectForKey:@"CFBundleVersion"]; }

- (void)uninstallPlugin {}
- (void)installLibpurplePlugin {}

@end
