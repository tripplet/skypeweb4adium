//
//  PurpleSkypeService.m
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 19.07.15.
//  Copyright © 2015 Tobias Tangemann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "PurpleSkypeWebAccount.h"
#import "PurpleSkypeWebService.h"

#import <Adium/AISharedAdium.h>
#import <Adium/AIStatusControllerProtocol.h>
#import <AIUtilities/AIStringUtilities.h>
#import <AIUtilities/AIImageAdditions.h>

@implementation PurpleSkypeWebService

- (Class)accountClass {
    return [PurpleSkypeWebAccount class];
}

// Service Description
- (AIServiceImportance)serviceImportance { return AIServicePrimary; }
- (NSString *) serviceCodeUniqueID       { return @"libpurple-skypeweb"; }
- (NSString *) serviceID                 { return @"Skype"; }
- (NSString *) serviceClass              { return @"Skype"; }
- (NSString *) shortDescription          { return @"Skype"; }
- (NSString *) longDescription           { return @"Skype Web API"; }
- (NSUInteger) allowedLength             { return 64; }
- (BOOL) requiresPassword                { return YES; }
- (BOOL) supportsPassword                { return YES; }
- (BOOL) caseSensitive                   { return NO; }
- (BOOL) canRegisterNewAccounts          { return NO; }

- (NSImage *)defaultServiceIconOfType:(AIServiceIconType)iconType
{
    if ((iconType == AIServiceIconSmall) || (iconType == AIServiceIconList)) {
        return [NSImage imageNamed:@"skype_small" forClass:[self class] loadLazily:YES];
    } else {
        return [NSImage imageNamed:@"skype" forClass:[self class] loadLazily:YES];
    }
}

- (NSString *)pathForDefaultServiceIconOfType:(AIServiceIconType)iconType
{
    if ((iconType == AIServiceIconSmall) || (iconType == AIServiceIconList)) {
        return [[NSBundle bundleForClass:[self class]] pathForImageResource:@"skype_small"];
    }
    return [[NSBundle bundleForClass:[self class]] pathForImageResource:@"skype"];
}

@end
