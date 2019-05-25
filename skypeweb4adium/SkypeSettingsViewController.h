//
//  SkypeSettingsViewController.h
//  skypeweb4adium
//
//  Created by Tobias Tangemann on 25.05.19.
//  Copyright © 2019 Tobias Tangemann. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AdiumLibpurple/PurpleAccountViewController.h>

@interface SkypeSettingsViewController : PurpleAccountViewController {
    IBOutlet NSButton *useAltLogin;    
    __unsafe_unretained IBOutlet NSView *optionsView;
}

@property (nonatomic, assign) IBOutlet NSView *optionsView;

@end
