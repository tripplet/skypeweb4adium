//
//  SkypeSettingsViewController.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 25.05.19.
//  Copyright © 2019 Tobias Tangemann. All rights reserved.
//

#import "SkypeSettingsViewController.h"
#import <AdiumLibpurple/CBPurpleAccount.h>
#import "PurpleSkypeWebAccount.h"

@interface SkypeSettingsViewController ()
@end

@implementation SkypeSettingsViewController
@synthesize optionsView;

- (NSView*) optionsView { return optionsView; }
- (NSString*) nibName   { return @"SkypeSettings"; }

- (void)configureForAccount:(AIAccount *) inAccount
{
    [super configureForAccount:inAccount];
    [useAltLogin setState:[[account preferenceForKey:@"alt-login" group:GROUP_ACCOUNT_STATUS] boolValue]];
}

//Save controls
- (void)saveConfiguration
{
    [super saveConfiguration];
    [account setPreference:[NSNumber numberWithBool:[useAltLogin state]]
                    forKey:@"alt-login" group:GROUP_ACCOUNT_STATUS];
}

@end
