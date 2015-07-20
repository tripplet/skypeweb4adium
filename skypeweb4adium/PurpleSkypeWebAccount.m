//
//  PurpleSkypeWebAccount.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 21.07.15.
//  Copyright (c) 2015 Tobias Tangemann. All rights reserved.
//

#import "PurpleSkypeWebAccount.h"

@implementation PurpleSkypeWebAccount

- (const char*)protocolPlugin
{
    return "prpl-skypeweb";
}

- (NSString *)host
{
    return @"api.skype.com";
}

@end
