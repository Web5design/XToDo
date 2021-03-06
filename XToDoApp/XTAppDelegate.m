//
//  XTAppDelegate.m
//  XToDoApp
//
//  Created by Travis on 13-12-6.
//  Copyright (c) 2013年 Plumn LLC. All rights reserved.
//

#import "XTAppDelegate.h"
#import "XToDoModel.h"
#import "XToDoWindowController.h"

@interface XTAppDelegate()
@property (nonatomic, strong) XToDoWindowController *windowController;
@end

@implementation XTAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    if (self.windowController==nil) {
        XToDoWindowController *wc=[[XToDoWindowController alloc] initWithWindowNibName:@"XToDoWindowController"];
        self.windowController=wc;
    }
    
    //FIXME: should open a dialog to select project path
    self.windowController.projectPath=@"~/Development/Work";
    [self.windowController.window makeKeyAndOrderFront:nil];
    
    
    self.window=self.windowController.window;
    
    [self.windowController refresh:nil];
}

@end
