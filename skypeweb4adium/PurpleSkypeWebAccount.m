//
//  PurpleSkypeWebAccount.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 21.07.15.
//  Copyright (c) 2015 Tobias Tangemann. All rights reserved.
//

#import "PurpleSkypeWebAccount.h"
#import <Adium/AIStatus.h>

@implementation PurpleSkypeWebAccount

- (PurpleAccount *)getPurpleAccount
{
    return account;
}

- (const char*)protocolPlugin
{
    return "prpl-skypeweb";
}

// Bridge Adium settings over to the libpurple side
- (void) configurePurpleAccount
{
    [super configurePurpleAccount];
    
    purple_account_set_bool(account, "alt-login", [[self preferenceForKey:@"alt-login" group:GROUP_ACCOUNT_STATUS] boolValue]);
}

- (NSString *)host
{
    return @"api.skype.com";
}

- (const char *)purpleStatusIDForStatus:(AIStatus *)statusState
                              arguments:(NSMutableDictionary *)arguments
{
    char *statusID = NULL;
    
    switch (statusState.statusType) {
        case AIAvailableStatusType:
            statusID = "Online";
            break;
        case AIAwayStatusType:
            statusID = "Away";
            break;
            
        case AIInvisibleStatusType:
            statusID = "Hidden";
            break;
            
        case AIOfflineStatusType:
            statusID = "Offline";
            break;
    }
    
    return statusID;
}

@end
