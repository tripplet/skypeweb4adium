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

- (const char*)protocolPlugin
{
    return "prpl-skypeweb";
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
